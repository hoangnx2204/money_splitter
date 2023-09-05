// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillModel _$BillModelFromJson(Map<String, dynamic> json) {
  return _BillModel.fromJson(json);
}

/// @nodoc
mixin _$BillModel {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillModelCopyWith<BillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillModelCopyWith<$Res> {
  factory $BillModelCopyWith(BillModel value, $Res Function(BillModel) then) =
      _$BillModelCopyWithImpl<$Res, BillModel>;
  @useResult
  $Res call({String name, double price});
}

/// @nodoc
class _$BillModelCopyWithImpl<$Res, $Val extends BillModel>
    implements $BillModelCopyWith<$Res> {
  _$BillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BillModelCopyWith<$Res> implements $BillModelCopyWith<$Res> {
  factory _$$_BillModelCopyWith(
          _$_BillModel value, $Res Function(_$_BillModel) then) =
      __$$_BillModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double price});
}

/// @nodoc
class __$$_BillModelCopyWithImpl<$Res>
    extends _$BillModelCopyWithImpl<$Res, _$_BillModel>
    implements _$$_BillModelCopyWith<$Res> {
  __$$_BillModelCopyWithImpl(
      _$_BillModel _value, $Res Function(_$_BillModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$_BillModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillModel extends _BillModel {
  const _$_BillModel({required this.name, required this.price}) : super._();

  factory _$_BillModel.fromJson(Map<String, dynamic> json) =>
      _$$_BillModelFromJson(json);

  @override
  final String name;
  @override
  final double price;

  @override
  String toString() {
    return 'BillModel(name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillModelCopyWith<_$_BillModel> get copyWith =>
      __$$_BillModelCopyWithImpl<_$_BillModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillModelToJson(
      this,
    );
  }
}

abstract class _BillModel extends BillModel {
  const factory _BillModel(
      {required final String name, required final double price}) = _$_BillModel;
  const _BillModel._() : super._();

  factory _BillModel.fromJson(Map<String, dynamic> json) =
      _$_BillModel.fromJson;

  @override
  String get name;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_BillModelCopyWith<_$_BillModel> get copyWith =>
      throw _privateConstructorUsedError;
}
