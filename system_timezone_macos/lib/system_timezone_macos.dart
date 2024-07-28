import 'package:objective_c/objective_c.dart';
import 'package:system_timezone_macos/src/timezone_bindings.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

/// The MacOS implementation of [SystemTimezonePlatform].
class SystemTimezoneMacOS extends SystemTimezonePlatform {

  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith() {
    SystemTimezonePlatform.instance = SystemTimezoneMacOS();
  }

  @override
  List<String> getKnownTimezoneNames() {
    final result = NSTimeZone.getKnownTimeZoneNames();
    final array = NSArray.castFrom(result);
    return List.generate(
      array.count,
      (index) {
        final item = NSString.castFrom(array.objectAtIndex_(index)).toString();
        return item;
      },
    );
  }

  @override
  String? getTimezoneName() {
    return NSTimeZone.getSystemTimeZone().name.toString();
  }
}
