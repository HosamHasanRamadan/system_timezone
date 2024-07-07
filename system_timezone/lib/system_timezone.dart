import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

SystemTimezonePlatform get _platform => SystemTimezonePlatform.instance;

/// Returns the name of the current platform.
String? getTimezoneName()  {
  final platformName =  _platform.getTimezoneName();
  return platformName;
}


/// Returns the name of the current platform.
List<String> getSupportedTimezones()  {
  final platformName =  _platform.getSupportedTimezones();
  return platformName;
}