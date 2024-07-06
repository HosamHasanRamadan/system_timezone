import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_timezone_linux/system_timezone_linux.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SystemTimezoneLinux', () {
    const kPlatformName = 'Linux';
    late SystemTimezoneLinux systemTimezone;
    late List<MethodCall> log;

    setUp(() async {
      systemTimezone = SystemTimezoneLinux();

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
      SystemTimezoneLinux.registerWith();
      expect(SystemTimezonePlatform.instance, isA<SystemTimezoneLinux>());
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
