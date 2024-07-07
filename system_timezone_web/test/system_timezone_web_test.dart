// import 'package:flutter_test/flutter_test.dart';
// import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';
// import 'package:system_timezone_web/system_timezone_web.dart';

// void main() {
//   TestWidgetsFlutterBinding.ensureInitialized();

//   group('SystemTimezoneWeb', () {
//     const kPlatformName = 'Web';
//     late SystemTimezoneWeb systemTimezone;

//     setUp(() async {
//       systemTimezone = SystemTimezoneWeb();
//     });

//     test('can be registered', () {
//       SystemTimezoneWeb.registerWith();
//       expect(SystemTimezonePlatform.instance, isA<SystemTimezoneWeb>());
//     });

//     test('getPlatformName returns correct name', () async {
//       final name = await systemTimezone.getPlatformName();
//       expect(name, equals(kPlatformName));
//     });
//   });
// }
