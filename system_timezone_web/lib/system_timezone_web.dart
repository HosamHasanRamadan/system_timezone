import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

/// The Web implementation of [SystemTimezonePlatform].
class SystemTimezoneWeb extends SystemTimezonePlatform {
  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith([Object? registrar]) {
    SystemTimezonePlatform.instance = SystemTimezoneWeb();
  }

  @override
  Future<String?> getPlatformName() async => 'Web';
}
