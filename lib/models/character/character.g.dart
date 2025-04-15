// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Character _$CharacterFromJson(Map<String, dynamic> json) => _Character(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  status: json['status'] as String,
  species: json['species'] as String,
  type: json['type'] as String,
  gender: json['gender'] as String,
  image: json['image'] as String,
  location: LocationInfo.fromJson(json['location'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CharacterToJson(_Character instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'image': instance.image,
      'location': instance.location,
    };

_LocationInfo _$LocationInfoFromJson(Map<String, dynamic> json) =>
    _LocationInfo(name: json['name'] as String);

Map<String, dynamic> _$LocationInfoToJson(_LocationInfo instance) =>
    <String, dynamic>{'name': instance.name};
