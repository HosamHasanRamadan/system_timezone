import 'package:objective_c/objective_c.dart';
import 'package:system_timezone_ios/timezone_bindings.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

/// The iOS implementation of [SystemTimezonePlatform].
class SystemTimezoneIOS extends SystemTimezonePlatform {

  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith() {
    SystemTimezonePlatform.instance = SystemTimezoneIOS();
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
