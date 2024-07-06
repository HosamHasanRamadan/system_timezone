import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

SystemTimezonePlatform get _platform => SystemTimezonePlatform.instance;

/// Returns the name of the current platform.
Future<String> getPlatformName() async {
  final platformName = await _platform.getPlatformName();
  if (platformName == null) throw Exception('Unable to get platform name.');
  return platformName;
}
