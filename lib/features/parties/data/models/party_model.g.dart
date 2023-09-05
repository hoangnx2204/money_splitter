// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'party_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PartyModel _$$_PartyModelFromJson(Map<String, dynamic> json) =>
    _$_PartyModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      timestamp: json['timestamp'] as String? ?? '',
    );

Map<String, dynamic> _$$_PartyModelToJson(_$_PartyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'timestamp': instance.timestamp,
    };
