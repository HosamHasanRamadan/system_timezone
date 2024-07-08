import 'dart:io';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';
import 'package:windows_globalization/windows_globalization.dart';

/// The Windows implementation of [SystemTimezonePlatform].
class SystemTimezoneWindows extends SystemTimezonePlatform {
  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith() {
    SystemTimezonePlatform.instance = SystemTimezoneWindows();
  }


  
  @override
  List<String> getSupportedTimezones() {
    final result  = Process.runSync('tzutil', ['/l']);
    return result.stdout?.toString().split('\n').map((e) => e.trim(),).where((e) => e.isNotEmpty,) .toList() ?? [];
  }
  
  @override
  String? getTimezoneName() {
    return Calendar().getTimeZone();
  }
}
