import 'dart:js_interop';


String get nativeTimeZoneName => jsDateTimeFormat().resolvedOptions().timeZone;

List<String> get nativeKnownTimezoneNames {
  return _getSupportedTimezonesWeb('timeZone'.toJS).toDart.cast<String>();
}


@JS('Intl.supportedValuesOf')
external JSArray<JSString> _getSupportedTimezonesWeb(JSString value);

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
