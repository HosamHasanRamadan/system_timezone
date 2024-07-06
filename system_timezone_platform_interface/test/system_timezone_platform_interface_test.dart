import 'package:flutter_test/flutter_test.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

class SystemTimezoneMock extends SystemTimezonePlatform {
  static const mockPlatformName = 'Mock';

  @override
  Future<String?> getPlatformName() async => mockPlatformName;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('SystemTimezonePlatformInterface', () {
    late SystemTimezonePlatform systemTimezonePlatform;

    setUp(() {
      systemTimezonePlatform = SystemTimezoneMock();
      SystemTimezonePlatform.instance = systemTimezonePlatform;
    });

    group('getPlatformName', () {
      test('returns correct name', () async {
        expect(
          await SystemTimezonePlatform.instance.getPlatformName(),
          equals(SystemTimezoneMock.mockPlatformName),
        );
      });
    });
  });
}
