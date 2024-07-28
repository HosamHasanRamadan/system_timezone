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
  List<String> getKnownTimezoneNames() {
    final command = Process.runSync('timedatectl', ['list-timezones']);
    // remove last element which is empty string
    final timezones = command.stdout?.toString().split('\n')?..removeLast();
    return timezones?.toList(growable: false) ?? [];
  }

  @override
  String? getTimezoneName() {
    final command = Process.runSync('timedatectl', ['show','-p','Timezone']);
    final segmants = command.stdout?.toString().split('=');
    if (segmants == null || segmants.isEmpty) return null;  
    return segmants.elementAtOrNull(1);
  }
}
