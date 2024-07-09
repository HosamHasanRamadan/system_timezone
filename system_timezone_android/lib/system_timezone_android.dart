import 'package:system_timezone_android/timezone_util.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

/// The Android implementation of [SystemTimezonePlatform].
class SystemTimezoneAndroid extends SystemTimezonePlatform {
  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith() {
    SystemTimezonePlatform.instance = SystemTimezoneAndroid();
  }
  
  @override
  String? getTimezoneName() {
    return TimeZoneUtil.Companion.getLocalTimezone().toDartString();
  }
  
  @override
  List<String> getSupportedTimezones() {
    return TimeZoneUtil.Companion.getAvailableTimezones().toList().map((e) => e.toDartString(),).toList();
  }

}
