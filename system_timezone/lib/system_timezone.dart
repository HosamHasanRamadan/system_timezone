import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

abstract final class SystemTimezone {
  
  SystemTimezone._();
  
  static SystemTimezonePlatform get _platform =>
      SystemTimezonePlatform.instance;

  /// Returns the name of the current timezone.
  static String? getTimezoneName() {
    final platformName = _platform.getTimezoneName();
    return platformName;
  }

  /// Returns list of supported timezones
  static List<String> getSupportedTimezones() {
    final platformName = _platform.getKnownTimezoneNames();
    return platformName;
  }
}
