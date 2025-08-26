// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Master _$MasterFromJson(Map<String, dynamic> json) => _Master(
  lat: (json['lat'] as num).toDouble(),
  long: (json['long'] as num).toDouble(),
  name: json['name'] as String,
  description: json['description'] as String,
  type: $enumDecode(_$MasterTypeEnumMap, json['type']),
);

Map<String, dynamic> _$MasterToJson(_Master instance) => <String, dynamic>{
  'lat': instance.lat,
  'long': instance.long,
  'name': instance.name,
  'description': instance.description,
  'type': _$MasterTypeEnumMap[instance.type]!,
};

const _$MasterTypeEnumMap = {
  MasterType.manicure: 'manicure',
  MasterType.sugaring: 'sugaring',
  MasterType.eyebrows: 'eyebrows',
};
