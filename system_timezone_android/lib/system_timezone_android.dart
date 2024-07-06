import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

/// The Android implementation of [SystemTimezonePlatform].
class SystemTimezoneAndroid extends SystemTimezonePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('system_timezone_android');

  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith() {
    SystemTimezonePlatform.instance = SystemTimezoneAndroid();
  }

  @override
  Future<String?> getPlatformName() {
    return methodChannel.invokeMethod<String>('getPlatformName');
  }
}
