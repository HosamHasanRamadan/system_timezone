import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_timezone_platform_interface/src/method_channel_system_timezone.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const kPlatformName = 'platformName';

  group('$MethodChannelSystemTimezone', () {
    late MethodChannelSystemTimezone methodChannelSystemTimezone;
    final log = <MethodCall>[];

    setUp(() async {
      methodChannelSystemTimezone = MethodChannelSystemTimezone();
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
        methodChannelSystemTimezone.methodChannel,
        (methodCall) async {
          log.add(methodCall);
          switch (methodCall.method) {
            case 'getPlatformName':
              return kPlatformName;
            default:
              return null;
          }
        },
      );
    });

    tearDown(log.clear);

    test('getPlatformName', () async {
      final platformName = await methodChannelSystemTimezone.getPlatformName();
      expect(
        log,
        <Matcher>[isMethodCall('getPlatformName', arguments: null)],
      );
      expect(platformName, equals(kPlatformName));
    });
  });
}
