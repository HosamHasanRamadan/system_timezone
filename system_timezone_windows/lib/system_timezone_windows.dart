import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart' as ffi;
import 'package:system_timezone_platform_interface/system_timezone_platform_interface.dart';
import 'package:system_timezone_windows/system_timezone_windows_bindings_generated.dart';

/// The Windows implementation of [SystemTimezonePlatform].
class SystemTimezoneWindows extends SystemTimezonePlatform {
  /// Registers this class as the default instance of [SystemTimezonePlatform]
  static void registerWith() {
    SystemTimezonePlatform.instance = SystemTimezoneWindows();
  }

  @override
  List<String> getSupportedTimezones() => _timezones();

  @override
  String? getTimezoneName() => _timezone();
}

String? _timezone() {
  final a = _bindings.timezone();
  if(a == nullptr) return null;
  return _convertFFIPointerToString(a.ref.stringValue,a.ref.stringSize);
}

List<String> _timezones() {
  final a = _bindings.timezones();
  if (a == nullptr) return [];
  final value = a.ref;
  return _convertFFIPointerToStringList(
    value.listValue,
    value.listElementSize,
    value.listSize,
  );
}
String _convertFFIPointerToString(
  Pointer<Char> pointer,
  int stringSize,
) => pointer.cast<ffi.Utf8>().toDartString();

List<String> _convertFFIPointerToStringList(
  Pointer<Pointer<Char>> pointer,
  int itemSize,
  int listSize,
) {
  final strings = <String>[];

  // Loop until we reach a null pointer

  for (var index = 0; index < listSize; index++) {
    // Get the pointer to the current string
    final charPointer = pointer[index];

    final string = _convertFFIPointerToString(charPointer, itemSize);

    // Add the decoded string to the list
    strings.add(string);
  }

  return strings;
}

const String _libName = 'system_timezone_windows';

/// The dynamic library in which the symbols for [SystemTimezoneBindings] can be found.
final DynamicLibrary _dylib = () {
  if (Platform.isWindows) {
    return DynamicLibrary.open('$_libName.dll');
  }
  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}();

/// The bindings to the native functions in [_dylib].
final SystemTimezoneBindings _bindings = SystemTimezoneBindings(_dylib);
