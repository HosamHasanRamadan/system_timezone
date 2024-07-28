import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:flutter/services.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

/// An implementation of [SystemTimezonePlatform] that uses method channels.
class MethodChannelSystemTimezone extends SystemTimezonePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('system_timezone');
  

  
  @override
  String? getTimezoneName() {
    throw UnimplementedError();
  }
  
  @override
  List<String> getKnownTimezoneNames() {
    throw UnimplementedError();
  }


}
