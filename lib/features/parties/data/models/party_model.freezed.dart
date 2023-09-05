// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'party_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PartyModel _$PartyModelFromJson(Map<String, dynamic> json) {
  return _PartyModel.fromJson(json);
}

/// @nodoc
mixin _$PartyModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartyModelCopyWith<PartyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartyModelCopyWith<$Res> {
  factory $PartyModelCopyWith(
          PartyModel value, $Res Function(PartyModel) then) =
      _$PartyModelCopyWithImpl<$Res, PartyModel>;
  @useResult
  $Res call({String id, String name, String timestamp});
}

/// @nodoc
class _$PartyModelCopyWithImpl<$Res, $Val extends PartyModel>
    implements $PartyModelCopyWith<$Res> {
  _$PartyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PartyModelCopyWith<$Res>
    implements $PartyModelCopyWith<$Res> {
  factory _$$_PartyModelCopyWith(
          _$_PartyModel value, $Res Function(_$_PartyModel) then) =
      __$$_PartyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String timestamp});
}

/// @nodoc
class __$$_PartyModelCopyWithImpl<$Res>
    extends _$PartyModelCopyWithImpl<$Res, _$_PartyModel>
    implements _$$_PartyModelCopyWith<$Res> {
  __$$_PartyModelCopyWithImpl(
      _$_PartyModel _value, $Res Function(_$_PartyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? timestamp = null,
  }) {
    return _then(_$_PartyModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PartyModel extends _PartyModel {
  const _$_PartyModel({this.id = '', this.name = '', this.timestamp = ''})
      : super._();

  factory _$_PartyModel.fromJson(Map<String, dynamic> json) =>
      _$$_PartyModelFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String timestamp;

  @override
  String toString() {
    return 'PartyModel(id: $id, name: $name, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartyModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartyModelCopyWith<_$_PartyModel> get copyWith =>
      __$$_PartyModelCopyWithImpl<_$_PartyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartyModelToJson(
      this,
    );
  }
}

abstract class _PartyModel extends PartyModel {
  const factory _PartyModel(
      {final String id,
      final String name,
      final String timestamp}) = _$_PartyModel;
  const _PartyModel._() : super._();

  factory _PartyModel.fromJson(Map<String, dynamic> json) =
      _$_PartyModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_PartyModelCopyWith<_$_PartyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
