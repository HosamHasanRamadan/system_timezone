import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:objective_c/objective_c.dart';
import 'package:system_timezone_macos/timezone_bindings.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

/// The MacOS implementation of [SystemTimezonePlatform].
class SystemTimezoneMacOS extends SystemTimezonePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('system_timezone_macos');

  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith() {
    SystemTimezonePlatform.instance = SystemTimezoneMacOS();
  }

  @override
  List<String> getSupportedTimezones() {
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
