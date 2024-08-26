
import 'package:uuid/uuid.dart';


const uuid = Uuid();

// String makeId() {
//   const String namespace = 'noti_mobile_12345678-1234-5678-1234-56781234567';
//   return uuid.v5(namespace, uuid.v4());
// }

String makeId() {
  const String prefix = 'noti_mobile_12345678-1234-5678-1234-56781234567';
  return '$prefix${uuid.v4()}';
}