import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

class ExportPasswordRequiredException implements Exception {
  const ExportPasswordRequiredException();
}

class ExportInvalidPasswordException implements Exception {
  const ExportInvalidPasswordException();
}

class CryptoHelper {
  static const int minimumPasswordLength = 12;
  static const int _iterations = 600000;
  static const String _format = 'noti_export_encrypted';
  final AesGcm _cipher = AesGcm.with256bits();

  bool isEncrypted(Map<String, dynamic> root) => root['format'] == _format;

  Future<Uint8List> encrypt(String plainText, String password) async {
    if (password.length < minimumPasswordLength) {
      throw const FormatException('Export password is too short.');
    }
    final salt = _randomBytes(16);
    final nonce = _randomBytes(12);
    final key = await _deriveKey(password, salt);
    final box = await _cipher.encrypt(
      utf8.encode(plainText),
      secretKey: key,
      nonce: nonce,
    );
    final envelope = {
      'format': _format,
      'formatVersion': 2,
      'cipher': 'AES-256-GCM',
      'kdf': 'PBKDF2-HMAC-SHA256',
      'iterations': _iterations,
      'salt': base64Encode(salt),
      'nonce': base64Encode(box.nonce),
      'mac': base64Encode(box.mac.bytes),
      'ciphertext': base64Encode(box.cipherText),
    };
    return Uint8List.fromList(utf8.encode(jsonEncode(envelope)));
  }

  Future<String> decrypt(Map<String, dynamic> root, String? password) async {
    if (password == null || password.isEmpty) {
      throw const ExportPasswordRequiredException();
    }
    if (root['formatVersion'] != 2 ||
        root['cipher'] != 'AES-256-GCM' ||
        root['kdf'] != 'PBKDF2-HMAC-SHA256' ||
        root['iterations'] != _iterations) {
      throw const FormatException('Unsupported encrypted .noti format.');
    }
    try {
      final salt = base64Decode(root['salt'] as String);
      final nonce = base64Decode(root['nonce'] as String);
      final mac = base64Decode(root['mac'] as String);
      final cipherText = base64Decode(root['ciphertext'] as String);
      if (salt.length != 16 || nonce.length != 12 || mac.length != 16) {
        throw const FormatException('Invalid encrypted .noti metadata.');
      }
      final key = await _deriveKey(password, salt);
      final plainBytes = await _cipher.decrypt(
        SecretBox(cipherText, nonce: nonce, mac: Mac(mac)),
        secretKey: key,
      );
      return utf8.decode(plainBytes);
    } on SecretBoxAuthenticationError {
      throw const ExportInvalidPasswordException();
    } on TypeError {
      throw const FormatException('Invalid encrypted .noti metadata.');
    }
  }

  Uint8List _randomBytes(int length) {
    final random = Random.secure();
    return Uint8List.fromList(
      List<int>.generate(length, (_) => random.nextInt(256)),
    );
  }

  Future<SecretKey> _deriveKey(String password, List<int> salt) {
    return Pbkdf2.hmacSha256(
      iterations: _iterations,
      bits: 256,
    ).deriveKey(secretKey: SecretKey(utf8.encode(password)), nonce: salt);
  }
}
