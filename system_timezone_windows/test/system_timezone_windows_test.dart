// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';
// import 'package:system_timezone_windows/system_timezone_windows.dart';

// void main() {
//   TestWidgetsFlutterBinding.ensureInitialized();

//   group('SystemTimezoneWindows', () {
//     const kPlatformName = 'Windows';
//     late SystemTimezoneWindows systemTimezone;
//     late List<MethodCall> log;

//     setUp(() async {
//       systemTimezone = SystemTimezoneWindows();

//       log = <MethodCall>[];
//       TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
//           .setMockMethodCallHandler(systemTimezone.methodChannel, (methodCall) async {
//         log.add(methodCall);
//         switch (methodCall.method) {
//           case 'getPlatformName':
//             return kPlatformName;
//           default:
//             return null;
//         }
//       });
//     });

//     test('can be registered', () {
//       SystemTimezoneWindows.registerWith();
//       expect(SystemTimezonePlatform.instance, isA<SystemTimezoneWindows>());
//     });

//     test('getPlatformName returns correct name', () async {
//       final name = await systemTimezone.getPlatformName();
//       expect(
//         log,
//         <Matcher>[isMethodCall('getPlatformName', arguments: null)],
//       );
//       expect(name, equals(kPlatformName));
//     });
//   });
// }
