import 'package:js/js.dart';
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';

/// The Web implementation of [SystemTimezonePlatform].
class SystemTimezoneWeb extends SystemTimezonePlatform {
  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith([Object? registrar]) {
    SystemTimezonePlatform.instance = SystemTimezoneWeb();
  }

  // Intl.supportedValuesOf("timeZone")
  @override
  List<String> getKnownTimezoneNames() => _getSupportedTimezonesWeb('timeZone');

  // Intl.DateTimeFormat().resolvedOptions().timeZone
  @override
  String? getTimezoneName() => _getLocalTimeZoneWeb();
}

String _getLocalTimeZoneWeb() => jsDateTimeFormat().resolvedOptions().timeZone;

@JS('Intl.supportedValuesOf')
external List<String> _getSupportedTimezonesWeb(String value);

@JS('Intl.DateTimeFormat')
external _JSDateTimeFormat jsDateTimeFormat();

@JS('Intl.DateTimeFormat.prototype')
@staticInterop
abstract class _JSDateTimeFormat {}

extension on _JSDateTimeFormat {
  @JS()
  external _JSResolvedOptions resolvedOptions();
}

@JS()
@staticInterop
abstract class _JSResolvedOptions {}

extension on _JSResolvedOptions {
  @JS()
  external String get timeZone;
}
