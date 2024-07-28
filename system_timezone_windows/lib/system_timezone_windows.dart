import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';
import 'package:system_timezone_windows/src/bindings.dart';

/// The Windows implementation of [SystemTimezonePlatform].
class SystemTimezoneWindows extends SystemTimezonePlatform {
  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith() {
    SystemTimezonePlatform.instance = SystemTimezoneWindows();
  }

  @override
  List<String> getKnownTimezoneNames() => nativeKnownTimezoneNames;

  @override
  String? getTimezoneName() => nativeTimezoneName;
}
