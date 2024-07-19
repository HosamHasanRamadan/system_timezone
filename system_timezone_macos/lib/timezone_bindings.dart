// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;
import 'package:objective_c/objective_c.dart' as objc;

/// NSTimeZone
class NSTimeZone extends objc.NSObject {
  NSTimeZone._(ffi.Pointer<objc.ObjCObject> pointer,
      {bool retain = false, bool release = false})
      : super.castFromPointer(pointer, retain: retain, release: release);

  /// Constructs a [NSTimeZone] that points to the same underlying object as [other].
  NSTimeZone.castFrom(objc.ObjCObjectBase other)
      : this._(other.pointer, retain: true, release: true);

  /// Constructs a [NSTimeZone] that wraps the given raw object pointer.
  NSTimeZone.castFromPointer(ffi.Pointer<objc.ObjCObject> other,
      {bool retain = false, bool release = false})
      : this._(other, retain: retain, release: release);

  /// Returns whether [obj] is an instance of [NSTimeZone].
  static bool isInstance(objc.ObjCObjectBase obj) {
    return _objc_msgSend_0(obj.pointer, _sel_isKindOfClass_, _class_NSTimeZone);
  }

  /// name
  objc.NSString get name {
    final _ret = _objc_msgSend_1(this.pointer, _sel_name);
    return objc.NSString.castFromPointer(_ret, retain: true, release: true);
  }

  /// data
  objc.NSData get data {
    final _ret = _objc_msgSend_2(this.pointer, _sel_data);
    return objc.NSData.castFromPointer(_ret, retain: true, release: true);
  }

  /// secondsFromGMTForDate:
  int secondsFromGMTForDate_(objc.NSDate aDate) {
    return _objc_msgSend_3(
        this.pointer, _sel_secondsFromGMTForDate_, aDate.pointer);
  }

  /// abbreviationForDate:
  objc.NSString? abbreviationForDate_(objc.NSDate aDate) {
    final _ret =
        _objc_msgSend_4(this.pointer, _sel_abbreviationForDate_, aDate.pointer);
    return _ret.address == 0
        ? null
        : objc.NSString.castFromPointer(_ret, retain: true, release: true);
  }

  /// isDaylightSavingTimeForDate:
  bool isDaylightSavingTimeForDate_(objc.NSDate aDate) {
    return _objc_msgSend_5(
        this.pointer, _sel_isDaylightSavingTimeForDate_, aDate.pointer);
  }

  /// daylightSavingTimeOffsetForDate:
  double daylightSavingTimeOffsetForDate_(objc.NSDate aDate) {
    return objc.useMsgSendVariants
        ? _objc_msgSend_6Fpret(
            this.pointer, _sel_daylightSavingTimeOffsetForDate_, aDate.pointer)
        : _objc_msgSend_6(
            this.pointer, _sel_daylightSavingTimeOffsetForDate_, aDate.pointer);
  }

  /// nextDaylightSavingTimeTransitionAfterDate:
  objc.NSDate? nextDaylightSavingTimeTransitionAfterDate_(objc.NSDate aDate) {
    final _ret = _objc_msgSend_7(this.pointer,
        _sel_nextDaylightSavingTimeTransitionAfterDate_, aDate.pointer);
    return _ret.address == 0
        ? null
        : objc.NSDate.castFromPointer(_ret, retain: true, release: true);
  }

  /// systemTimeZone
  static NSTimeZone getSystemTimeZone() {
    final _ret = _objc_msgSend_8(_class_NSTimeZone, _sel_systemTimeZone);
    return NSTimeZone.castFromPointer(_ret, retain: true, release: true);
  }

  /// resetSystemTimeZone
  static void resetSystemTimeZone() {
    _objc_msgSend_9(_class_NSTimeZone, _sel_resetSystemTimeZone);
  }

  /// defaultTimeZone
  static NSTimeZone getDefaultTimeZone() {
    final _ret = _objc_msgSend_8(_class_NSTimeZone, _sel_defaultTimeZone);
    return NSTimeZone.castFromPointer(_ret, retain: true, release: true);
  }

  /// setDefaultTimeZone:
  static void setDefaultTimeZone(NSTimeZone value) {
    return _objc_msgSend_10(
        _class_NSTimeZone, _sel_setDefaultTimeZone_, value.pointer);
  }

  /// localTimeZone
  static NSTimeZone getLocalTimeZone() {
    final _ret = _objc_msgSend_8(_class_NSTimeZone, _sel_localTimeZone);
    return NSTimeZone.castFromPointer(_ret, retain: true, release: true);
  }

  /// knownTimeZoneNames
  static objc.ObjCObjectBase getKnownTimeZoneNames() {
    final _ret = _objc_msgSend_11(_class_NSTimeZone, _sel_knownTimeZoneNames);
    return objc.ObjCObjectBase(_ret, retain: true, release: true);
  }

  /// abbreviationDictionary
  static objc.NSDictionary getAbbreviationDictionary() {
    final _ret =
        _objc_msgSend_12(_class_NSTimeZone, _sel_abbreviationDictionary);
    return objc.NSDictionary.castFromPointer(_ret, retain: true, release: true);
  }

  /// setAbbreviationDictionary:
  static void setAbbreviationDictionary(objc.NSDictionary value) {
    return _objc_msgSend_13(
        _class_NSTimeZone, _sel_setAbbreviationDictionary_, value.pointer);
  }

  /// timeZoneDataVersion
  static objc.NSString getTimeZoneDataVersion() {
    final _ret = _objc_msgSend_1(_class_NSTimeZone, _sel_timeZoneDataVersion);
    return objc.NSString.castFromPointer(_ret, retain: true, release: true);
  }

  /// secondsFromGMT
  int get secondsFromGMT {
    return _objc_msgSend_14(this.pointer, _sel_secondsFromGMT);
  }

  /// abbreviation
  objc.NSString? get abbreviation {
    final _ret = _objc_msgSend_15(this.pointer, _sel_abbreviation);
    return _ret.address == 0
        ? null
        : objc.NSString.castFromPointer(_ret, retain: true, release: true);
  }

  /// isDaylightSavingTime
  bool get daylightSavingTime {
    return _objc_msgSend_16(this.pointer, _sel_isDaylightSavingTime);
  }

  /// daylightSavingTimeOffset
  double get daylightSavingTimeOffset {
    return objc.useMsgSendVariants
        ? _objc_msgSend_17Fpret(this.pointer, _sel_daylightSavingTimeOffset)
        : _objc_msgSend_17(this.pointer, _sel_daylightSavingTimeOffset);
  }

  /// nextDaylightSavingTimeTransition
  objc.NSDate? get nextDaylightSavingTimeTransition {
    final _ret =
        _objc_msgSend_18(this.pointer, _sel_nextDaylightSavingTimeTransition);
    return _ret.address == 0
        ? null
        : objc.NSDate.castFromPointer(_ret, retain: true, release: true);
  }

  /// description
  objc.NSString get description {
    final _ret = _objc_msgSend_1(this.pointer, _sel_description);
    return objc.NSString.castFromPointer(_ret, retain: true, release: true);
  }

  /// isEqualToTimeZone:
  bool isEqualToTimeZone_(NSTimeZone aTimeZone) {
    return _objc_msgSend_19(
        this.pointer, _sel_isEqualToTimeZone_, aTimeZone.pointer);
  }

  /// localizedName:locale:
  objc.NSString? localizedName_locale_(
      NSTimeZoneNameStyle style, objc.NSLocale? locale) {
    final _ret = _objc_msgSend_20(this.pointer, _sel_localizedName_locale_,
        style.value, locale?.pointer ?? ffi.nullptr);
    return _ret.address == 0
        ? null
        : objc.NSString.castFromPointer(_ret, retain: true, release: true);
  }

  /// timeZoneWithName:
  static NSTimeZone? timeZoneWithName_(objc.NSString tzName) {
    final _ret = _objc_msgSend_21(
        _class_NSTimeZone, _sel_timeZoneWithName_, tzName.pointer);
    return _ret.address == 0
        ? null
        : NSTimeZone.castFromPointer(_ret, retain: true, release: true);
  }

  /// timeZoneWithName:data:
  static NSTimeZone? timeZoneWithName_data_(
      objc.NSString tzName, objc.NSData? aData) {
    final _ret = _objc_msgSend_22(
        _class_NSTimeZone,
        _sel_timeZoneWithName_data_,
        tzName.pointer,
        aData?.pointer ?? ffi.nullptr);
    return _ret.address == 0
        ? null
        : NSTimeZone.castFromPointer(_ret, retain: true, release: true);
  }

  /// initWithName:
  NSTimeZone? initWithName_(objc.NSString tzName) {
    final _ret =
        _objc_msgSend_21(this.pointer, _sel_initWithName_, tzName.pointer);
    return _ret.address == 0
        ? null
        : NSTimeZone.castFromPointer(_ret, retain: true, release: true);
  }

  /// initWithName:data:
  NSTimeZone? initWithName_data_(objc.NSString tzName, objc.NSData? aData) {
    final _ret = _objc_msgSend_22(this.pointer, _sel_initWithName_data_,
        tzName.pointer, aData?.pointer ?? ffi.nullptr);
    return _ret.address == 0
        ? null
        : NSTimeZone.castFromPointer(_ret, retain: true, release: true);
  }

  /// timeZoneForSecondsFromGMT:
  static NSTimeZone timeZoneForSecondsFromGMT_(int seconds) {
    final _ret = _objc_msgSend_23(
        _class_NSTimeZone, _sel_timeZoneForSecondsFromGMT_, seconds);
    return NSTimeZone.castFromPointer(_ret, retain: true, release: true);
  }

  /// timeZoneWithAbbreviation:
  static NSTimeZone? timeZoneWithAbbreviation_(objc.NSString abbreviation) {
    final _ret = _objc_msgSend_21(_class_NSTimeZone,
        _sel_timeZoneWithAbbreviation_, abbreviation.pointer);
    return _ret.address == 0
        ? null
        : NSTimeZone.castFromPointer(_ret, retain: true, release: true);
  }

  /// init
  NSTimeZone init() {
    final _ret = _objc_msgSend_11(this.pointer, _sel_init);
    return NSTimeZone.castFromPointer(_ret, retain: true, release: true);
  }

  /// new
  static NSTimeZone new1() {
    final _ret = _objc_msgSend_11(_class_NSTimeZone, _sel_new);
    return NSTimeZone.castFromPointer(_ret, retain: false, release: true);
  }

  /// allocWithZone:
  static NSTimeZone allocWithZone_(ffi.Pointer<_NSZone> zone) {
    final _ret = _objc_msgSend_24(_class_NSTimeZone, _sel_allocWithZone_, zone);
    return NSTimeZone.castFromPointer(_ret, retain: false, release: true);
  }

  /// alloc
  static NSTimeZone alloc() {
    final _ret = _objc_msgSend_11(_class_NSTimeZone, _sel_alloc);
    return NSTimeZone.castFromPointer(_ret, retain: false, release: true);
  }
}

late final _class_NSTimeZone = objc.getClass("NSTimeZone");
late final _sel_name = objc.registerName("name");
final _objc_msgSend_1 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Pointer<objc.ObjCObject> Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        ffi.Pointer<objc.ObjCObject> Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
late final _sel_data = objc.registerName("data");
final _objc_msgSend_2 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Pointer<objc.ObjCObject> Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        ffi.Pointer<objc.ObjCObject> Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
late final _sel_secondsFromGMTForDate_ =
    objc.registerName("secondsFromGMTForDate:");
final _objc_msgSend_3 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Long Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        int Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<objc.ObjCObject>)>();
late final _sel_abbreviationForDate_ =
    objc.registerName("abbreviationForDate:");
final _objc_msgSend_4 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Pointer<objc.ObjCObject> Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        ffi.Pointer<objc.ObjCObject> Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<objc.ObjCObject>)>();
late final _sel_isDaylightSavingTimeForDate_ =
    objc.registerName("isDaylightSavingTimeForDate:");
final _objc_msgSend_5 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Bool Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        bool Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<objc.ObjCObject>)>();
late final _sel_daylightSavingTimeOffsetForDate_ =
    objc.registerName("daylightSavingTimeOffsetForDate:");
final _objc_msgSend_6 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Double Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        double Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<objc.ObjCObject>)>();
final _objc_msgSend_6Fpret = objc.msgSendFpretPointer
    .cast<
        ffi.NativeFunction<
            ffi.Double Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        double Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<objc.ObjCObject>)>();
late final _sel_nextDaylightSavingTimeTransitionAfterDate_ =
    objc.registerName("nextDaylightSavingTimeTransitionAfterDate:");
final _objc_msgSend_7 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Pointer<objc.ObjCObject> Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        ffi.Pointer<objc.ObjCObject> Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<objc.ObjCObject>)>();
late final _sel_systemTimeZone = objc.registerName("systemTimeZone");
final _objc_msgSend_8 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Pointer<objc.ObjCObject> Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        ffi.Pointer<objc.ObjCObject> Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
late final _sel_resetSystemTimeZone = objc.registerName("resetSystemTimeZone");
final _objc_msgSend_9 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        void Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
late final _sel_defaultTimeZone = objc.registerName("defaultTimeZone");
late final _sel_setDefaultTimeZone_ = objc.registerName("setDefaultTimeZone:");
final _objc_msgSend_10 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Void Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        void Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<objc.ObjCObject>)>();
late final _sel_localTimeZone = objc.registerName("localTimeZone");
late final _sel_knownTimeZoneNames = objc.registerName("knownTimeZoneNames");
final _objc_msgSend_11 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Pointer<objc.ObjCObject> Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        ffi.Pointer<objc.ObjCObject> Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
late final _sel_abbreviationDictionary =
    objc.registerName("abbreviationDictionary");
final _objc_msgSend_12 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Pointer<objc.ObjCObject> Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        ffi.Pointer<objc.ObjCObject> Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
late final _sel_setAbbreviationDictionary_ =
    objc.registerName("setAbbreviationDictionary:");
final _objc_msgSend_13 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Void Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        void Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<objc.ObjCObject>)>();
late final _sel_timeZoneDataVersion = objc.registerName("timeZoneDataVersion");
late final _sel_secondsFromGMT = objc.registerName("secondsFromGMT");
final _objc_msgSend_14 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Long Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        int Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
late final _sel_abbreviation = objc.registerName("abbreviation");
final _objc_msgSend_15 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Pointer<objc.ObjCObject> Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        ffi.Pointer<objc.ObjCObject> Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
late final _sel_isDaylightSavingTime =
    objc.registerName("isDaylightSavingTime");
final _objc_msgSend_16 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Bool Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        bool Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
late final _sel_daylightSavingTimeOffset =
    objc.registerName("daylightSavingTimeOffset");
final _objc_msgSend_17 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Double Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        double Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
final _objc_msgSend_17Fpret = objc.msgSendFpretPointer
    .cast<
        ffi.NativeFunction<
            ffi.Double Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        double Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
late final _sel_nextDaylightSavingTimeTransition =
    objc.registerName("nextDaylightSavingTimeTransition");
final _objc_msgSend_18 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Pointer<objc.ObjCObject> Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>)>>()
    .asFunction<
        ffi.Pointer<objc.ObjCObject> Function(
            ffi.Pointer<objc.ObjCObject>, ffi.Pointer<objc.ObjCSelector>)>();
late final _sel_description = objc.registerName("description");
late final _sel_isEqualToTimeZone_ = objc.registerName("isEqualToTimeZone:");
final _objc_msgSend_19 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Bool Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        bool Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<objc.ObjCObject>)>();

enum NSTimeZoneNameStyle {
  NSTimeZoneNameStyleStandard(0),
  NSTimeZoneNameStyleShortStandard(1),
  NSTimeZoneNameStyleDaylightSaving(2),
  NSTimeZoneNameStyleShortDaylightSaving(3),
  NSTimeZoneNameStyleGeneric(4),
  NSTimeZoneNameStyleShortGeneric(5);

  final int value;
  const NSTimeZoneNameStyle(this.value);

  static NSTimeZoneNameStyle fromValue(int value) => switch (value) {
        0 => NSTimeZoneNameStyleStandard,
        1 => NSTimeZoneNameStyleShortStandard,
        2 => NSTimeZoneNameStyleDaylightSaving,
        3 => NSTimeZoneNameStyleShortDaylightSaving,
        4 => NSTimeZoneNameStyleGeneric,
        5 => NSTimeZoneNameStyleShortGeneric,
        _ =>
          throw ArgumentError("Unknown value for NSTimeZoneNameStyle: $value"),
      };
}

late final _sel_localizedName_locale_ =
    objc.registerName("localizedName:locale:");
final _objc_msgSend_20 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Pointer<objc.ObjCObject> Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.UnsignedLong,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        ffi.Pointer<objc.ObjCObject> Function(
            ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>,
            int,
            ffi.Pointer<objc.ObjCObject>)>();
typedef instancetype = ffi.Pointer<objc.ObjCObject>;
typedef Dartinstancetype = objc.ObjCObjectBase;
late final _sel_timeZoneWithName_ = objc.registerName("timeZoneWithName:");
final _objc_msgSend_21 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            instancetype Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        instancetype Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<objc.ObjCObject>)>();
late final _sel_timeZoneWithName_data_ =
    objc.registerName("timeZoneWithName:data:");
final _objc_msgSend_22 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            instancetype Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        instancetype Function(
            ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>,
            ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCObject>)>();
late final _sel_initWithName_ = objc.registerName("initWithName:");
late final _sel_initWithName_data_ = objc.registerName("initWithName:data:");
late final _sel_timeZoneForSecondsFromGMT_ =
    objc.registerName("timeZoneForSecondsFromGMT:");
final _objc_msgSend_23 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            instancetype Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>, ffi.Long)>>()
    .asFunction<
        instancetype Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, int)>();
late final _sel_timeZoneWithAbbreviation_ =
    objc.registerName("timeZoneWithAbbreviation:");
late final _sel_init = objc.registerName("init");
late final _sel_new = objc.registerName("new");

final class _NSZone extends ffi.Opaque {}

late final _sel_allocWithZone_ = objc.registerName("allocWithZone:");
final _objc_msgSend_24 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            instancetype Function(ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<_NSZone>)>>()
    .asFunction<
        instancetype Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<_NSZone>)>();
late final _sel_alloc = objc.registerName("alloc");
final _objc_msgSend_0 = objc.msgSendPointer
    .cast<
        ffi.NativeFunction<
            ffi.Bool Function(
                ffi.Pointer<objc.ObjCObject>,
                ffi.Pointer<objc.ObjCSelector>,
                ffi.Pointer<objc.ObjCObject>)>>()
    .asFunction<
        bool Function(ffi.Pointer<objc.ObjCObject>,
            ffi.Pointer<objc.ObjCSelector>, ffi.Pointer<objc.ObjCObject>)>();
late final _sel_isKindOfClass_ = objc.registerName("isKindOfClass:");
