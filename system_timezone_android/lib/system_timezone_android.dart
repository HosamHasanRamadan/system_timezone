import 'package:system_timezone_android/src/timezone_util.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

/// The Android implementation of [SystemTimezonePlatform].
class SystemTimezoneAndroid extends SystemTimezonePlatform {
  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith() {
    SystemTimezonePlatform.instance = SystemTimezoneAndroid();
  }

  @override
  String? getTimezoneName() {
    return TimeZoneUtil.Companion.getLocalTimezone()
        .toDartString(releaseOriginal: true);
  }

  @override
  List<String> getKnownTimezoneNames() {
    final jList = TimeZoneUtil.Companion.getAvailableTimezones();
    try {
      return jList
          .map((e) => e.toDartString(releaseOriginal: true))
          .toList(growable: false);
    } finally {
      jList.release();
    }
  }
}
