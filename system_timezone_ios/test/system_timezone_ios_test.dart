import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_timezone_ios/system_timezone_ios.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SystemTimezoneIOS', () {
    const kPlatformName = 'iOS';
    late SystemTimezoneIOS systemTimezone;
    late List<MethodCall> log;

    setUp(() async {
      systemTimezone = SystemTimezoneIOS();

      log = <MethodCall>[];
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(systemTimezone.methodChannel, (methodCall) async {
        log.add(methodCall);
        switch (methodCall.method) {
          case 'getPlatformName':
            return kPlatformName;
          default:
            return null;
        }
      });
    });

    test('can be registered', () {
      SystemTimezoneIOS.registerWith();
      expect(SystemTimezonePlatform.instance, isA<SystemTimezoneIOS>());
    });

    test('getPlatformName returns correct name', () async {
      final name = await systemTimezone.getPlatformName();
      expect(
        log,
        <Matcher>[isMethodCall('getPlatformName', arguments: null)],
      );
      expect(name, equals(kPlatformName));
    });
  });
}
