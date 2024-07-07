// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
// import 'package:system_timezone/system_timezone.dart';
// import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

// class MockSystemTimezonePlatform extends Mock
//     with MockPlatformInterfaceMixin
//     implements SystemTimezonePlatform {}

// void main() {
//   TestWidgetsFlutterBinding.ensureInitialized();

//   group('SystemTimezone', () {
//     late SystemTimezonePlatform systemTimezonePlatform;

//     setUp(() {
//       systemTimezonePlatform = MockSystemTimezonePlatform();
//       SystemTimezonePlatform.instance = systemTimezonePlatform;
//     });

//     group('getPlatformName', () {
//       test('returns correct name when platform implementation exists',
//           () async {
//         const platformName = '__test_platform__';
//         when(
//           () => systemTimezonePlatform.getPlatformName(),
//         ).thenAnswer((_) async => platformName);

//         final actualPlatformName = await getPlatformName();
//         expect(actualPlatformName, equals(platformName));
//       });

//       test('throws exception when platform implementation is missing',
//           () async {
//         when(
//           () => systemTimezonePlatform.getPlatformName(),
//         ).thenAnswer((_) async => null);

//         expect(getPlatformName, throwsException);
//       });
//     });
//   });
// }
