import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

/// The Linux implementation of [SystemTimezonePlatform].
class SystemTimezoneLinux extends SystemTimezonePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('system_timezone_linux');

  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith() {
    SystemTimezonePlatform.instance = SystemTimezoneLinux();
  }

  @override
  List<String> getSupportedTimezones() {
    final command = Process.runSync('timedatectl', ['list-timezones']);
    return command.stdout?.toString().split('\n').map((e) => e.trim()).toList(growable: false) ?? [];
  }

  @override
  String? getTimezoneName() {
    final command = Process.runSync('timedatectl', []);
    final lines = command.stdout?.toString().split('\n').map((e) => e.trim(),);
    if (lines == null || lines.isEmpty) return null;
    const timeZoneLine = 'Time zone';
    for(final line in lines){
      if(line.contains(timeZoneLine)){
        return line.split(' ')[2];
      }
    }
    return null;
  }
}
