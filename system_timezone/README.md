# system_timezone

## The Motive

I wanted to explore creating an FFI (Foreign Function Interface) plugin and also wanted to create a synchronous API to get the system timezone that supports all platforms.

## Example

**Get current timezone**

```dart
final currentTimezone = SystemTimezone.getTimezoneName();
```

**Get list of known timezones**

```dart
final listOfTimezones = SystemTimezone.getKnownTimezoneNames();
```

## OS Constraints
- **Android**: minSdkVersion 19
- **iOS**: 2.0+
- **Linux**: Systemd v239 and above
- **Windows**: Windows 10 Version 1903 and above
- **macOS**: 10.0+
- **Web**: [Browser Compatibility for Intl.DateTimeFormat.resolvedOptions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat/resolvedOptions#browser_compatibility) and [Browser Compatibility for Intl.supportedValuesOf](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/supportedValuesOf#browser_compatibility)

## Credits
- The source code of [flutter_timezone](https://pub.dev/packages/flutter_timezone) and [iana-time-zone](https://github.com/strawlab/iana-time-zone) packages was instrumental in the development of this package.
- [UTM](https://mac.getutm.app) was invaluable for testing this package on Windows and Linux environments.
