///
//  Generated code. Do not modify.
//  source: Datetime.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Datetime extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Datetime', createEmptyInstance: create)
    ..a<$core.int>(1, 'year', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, 'month', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'day', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'hour', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'min', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'sec', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Datetime._() : super();
  factory Datetime() => create();
  factory Datetime.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Datetime.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Datetime clone() => Datetime()..mergeFromMessage(this);
  Datetime copyWith(void Function(Datetime) updates) => super.copyWith((message) => updates(message as Datetime));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Datetime create() => Datetime._();
  Datetime createEmptyInstance() => create();
  static $pb.PbList<Datetime> createRepeated() => $pb.PbList<Datetime>();
  @$core.pragma('dart2js:noInline')
  static Datetime getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Datetime>(create);
  static Datetime _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get year => $_getIZ(0);
  @$pb.TagNumber(1)
  set year($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasYear() => $_has(0);
  @$pb.TagNumber(1)
  void clearYear() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get month => $_getIZ(1);
  @$pb.TagNumber(2)
  set month($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMonth() => $_has(1);
  @$pb.TagNumber(2)
  void clearMonth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get day => $_getIZ(2);
  @$pb.TagNumber(3)
  set day($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDay() => $_has(2);
  @$pb.TagNumber(3)
  void clearDay() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get hour => $_getIZ(3);
  @$pb.TagNumber(4)
  set hour($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHour() => $_has(3);
  @$pb.TagNumber(4)
  void clearHour() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get min => $_getIZ(4);
  @$pb.TagNumber(5)
  set min($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMin() => $_has(4);
  @$pb.TagNumber(5)
  void clearMin() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get sec => $_getIZ(5);
  @$pb.TagNumber(6)
  set sec($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSec() => $_has(5);
  @$pb.TagNumber(6)
  void clearSec() => clearField(6);
}

