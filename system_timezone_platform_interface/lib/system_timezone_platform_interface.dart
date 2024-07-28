import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:system_timezone_platform_interface/src/method_channel_system_timezone.dart';

/// The interface that implementations of system_timezone must implement.
///
/// Platform implementations should extend this class
/// rather than implement it as `SystemTimezone`.
/// Extending this class (using `extends`) ensures that the subclass will get
/// the default implementation, while platform implementations that `implements`
///  this interface will be broken by newly added [SystemTimezonePlatform] methods.
abstract class SystemTimezonePlatform extends PlatformInterface {
  /// Constructs a SystemTimezonePlatform.
  SystemTimezonePlatform() : super(token: _token);

  static final Object _token = Object();

  static SystemTimezonePlatform _instance = MethodChannelSystemTimezone();

  /// The default instance of [SystemTimezonePlatform] to use.
  ///
  /// Defaults to [MethodChannelSystemTimezone].
  static SystemTimezonePlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [SystemTimezonePlatform] when they register themselves.
  static set instance(SystemTimezonePlatform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  /// Return the current platform name.
  String? getTimezoneName();

    /// Return the current platform name.
  List<String> getKnownTimezoneNames();
}
