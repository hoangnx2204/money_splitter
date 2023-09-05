// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillModel _$$_BillModelFromJson(Map<String, dynamic> json) => _$_BillModel(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BillModelToJson(_$_BillModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };
