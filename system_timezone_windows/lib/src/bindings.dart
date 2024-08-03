import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart' as ffi;
import 'package:system_timezone_windows/src/system_timezone_windows_bindings_generated.dart';

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

String? get nativeTimezoneName {
  late final Pointer<MyString> timezonePointer;
  try {
    timezonePointer = _bindings.timezone();
    if (timezonePointer == nullptr) return null;
    return _convertFFIPointerToString(
      timezonePointer.ref.stringValue,
      timezonePointer.ref.stringSize,
    );
  } finally {
    _bindings.free_pointer_mystring(timezonePointer);
  }
}

List<String> get nativeKnownTimezoneNames {
  late final Pointer<MyList> timezonesPointer;
  try {
    timezonesPointer = _bindings.timezones();
    if (timezonesPointer == nullptr) return [];
    return _convertFFIPointerToStringList(
      timezonesPointer.ref.listValue,
      timezonesPointer.ref.listElementSize,
      timezonesPointer.ref.listSize,
    );
  } finally {
    _bindings.free_pointer_mylist(timezonesPointer);
  }
}

String _convertFFIPointerToString(
  Pointer<Char> pointer,
  int stringSize,
) =>
    pointer.cast<ffi.Utf8>().toDartString();

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
