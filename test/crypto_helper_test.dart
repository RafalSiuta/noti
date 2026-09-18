import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:noti/utils/crypto_helper/crypto_helper.dart';
import 'package:noti/utils/export_helper/export_helper.dart';

void main() {
  const password = 'long backup password';
  const plainExport =
      '{"format":"noti_export","formatVersion":1,"payload":'
      '{"tasks":[],"notes":[],"settings":{}}}';

  test(
    'encrypted export hides content and decrypts with the password',
    () async {
      final helper = CryptoHelper();
      final encrypted = await helper.encrypt(plainExport, password);
      final stored = utf8.decode(encrypted);
      expect(stored, isNot(contains('"tasks"')));

      final envelope = jsonDecode(stored) as Map<String, dynamic>;
      expect(helper.isEncrypted(envelope), isTrue);
      expect(await helper.decrypt(envelope, password), plainExport);
    },
  );

  test('missing or incorrect password cannot decrypt an export', () async {
    final helper = CryptoHelper();
    final encrypted = await helper.encrypt(plainExport, password);
    final envelope = jsonDecode(utf8.decode(encrypted)) as Map<String, dynamic>;

    await expectLater(
      helper.decrypt(envelope, null),
      throwsA(isA<ExportPasswordRequiredException>()),
    );
    await expectLater(
      helper.decrypt(envelope, 'another password'),
      throwsA(isA<ExportInvalidPasswordException>()),
    );
  });

  test('modified ciphertext is rejected', () async {
    final helper = CryptoHelper();
    final encrypted = await helper.encrypt(plainExport, password);
    final envelope = jsonDecode(utf8.decode(encrypted)) as Map<String, dynamic>;
    final cipherText = base64Decode(envelope['ciphertext'] as String);
    cipherText[0] ^= 1;
    envelope['ciphertext'] = base64Encode(cipherText);

    await expectLater(
      helper.decrypt(envelope, password),
      throwsA(isA<ExportInvalidPasswordException>()),
    );
  });

  test('import supports both legacy and encrypted .noti files', () async {
    final directory = await Directory.systemTemp.createTemp(
      'noti_crypto_test_',
    );
    addTearDown(() => directory.delete(recursive: true));
    final legacy = File('${directory.path}/legacy.noti');
    final encrypted = File('${directory.path}/protected.noti');
    await legacy.writeAsString(plainExport);
    await encrypted.writeAsBytes(
      await CryptoHelper().encrypt(plainExport, password),
    );

    final helper = ExportHelper();
    expect((await helper.readNotiData(legacy)).tasks, isEmpty);
    await expectLater(
      helper.readNotiData(encrypted),
      throwsA(isA<ExportPasswordRequiredException>()),
    );
    expect(
      (await helper.readNotiData(encrypted, password: password)).notes,
      isEmpty,
    );
  });
}
