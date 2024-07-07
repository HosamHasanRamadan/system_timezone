// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:system_timezone_android/system_timezone_android.dart';
// import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

// void main() {
//   TestWidgetsFlutterBinding.ensureInitialized();

//   group('SystemTimezoneAndroid', () {
//     const kPlatformName = 'Android';
//     late SystemTimezoneAndroid systemTimezone;
//     late List<MethodCall> log;

//     setUp(() async {
//       systemTimezone = SystemTimezoneAndroid();

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
//       SystemTimezoneAndroid.registerWith();
//       expect(SystemTimezonePlatform.instance, isA<SystemTimezoneAndroid>());
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
