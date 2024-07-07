// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:system_timezone_macos/system_timezone_macos.dart';
// import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

// void main() {
//   TestWidgetsFlutterBinding.ensureInitialized();

//   group('SystemTimezoneMacOS', () {
//     const kPlatformName = 'MacOS';
//     late SystemTimezoneMacOS systemTimezone;
//     late List<MethodCall> log;

//     setUp(() async {
//       systemTimezone = SystemTimezoneMacOS();

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
//       SystemTimezoneMacOS.registerWith();
//       expect(SystemTimezonePlatform.instance, isA<SystemTimezoneMacOS>());
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
