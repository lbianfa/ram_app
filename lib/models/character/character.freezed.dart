// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Character {

 int get id; String get name; String get status; String get species; String get type; String get gender; String get image; Map<String, dynamic> get origin; LocationInfo get location;
/// Create a copy of Character
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterCopyWith<Character> get copyWith => _$CharacterCopyWithImpl<Character>(this as Character, _$identity);

  /// Serializes this Character to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Character&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.type, type) || other.type == type)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.origin, origin)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,species,type,gender,image,const DeepCollectionEquality().hash(origin),location);

@override
String toString() {
  return 'Character(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, image: $image, origin: $origin, location: $location)';
}


}

/// @nodoc
abstract mixin class $CharacterCopyWith<$Res>  {
  factory $CharacterCopyWith(Character value, $Res Function(Character) _then) = _$CharacterCopyWithImpl;
@useResult
$Res call({
 int id, String name, String status, String species, String type, String gender, String image, Map<String, dynamic> origin, LocationInfo location
});


$LocationInfoCopyWith<$Res> get location;

}
/// @nodoc
class _$CharacterCopyWithImpl<$Res>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._self, this._then);

  final Character _self;
  final $Res Function(Character) _then;

/// Create a copy of Character
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? type = null,Object? gender = null,Object? image = null,Object? origin = null,Object? location = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationInfo,
  ));
}
/// Create a copy of Character
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationInfoCopyWith<$Res> get location {
  
  return $LocationInfoCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Character implements Character {
   _Character({required this.id, required this.name, required this.status, required this.species, required this.type, required this.gender, required this.image, required final  Map<String, dynamic> origin, required this.location}): _origin = origin;
  factory _Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

@override final  int id;
@override final  String name;
@override final  String status;
@override final  String species;
@override final  String type;
@override final  String gender;
@override final  String image;
 final  Map<String, dynamic> _origin;
@override Map<String, dynamic> get origin {
  if (_origin is EqualUnmodifiableMapView) return _origin;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_origin);
}

@override final  LocationInfo location;

/// Create a copy of Character
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterCopyWith<_Character> get copyWith => __$CharacterCopyWithImpl<_Character>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Character&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.type, type) || other.type == type)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._origin, _origin)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,species,type,gender,image,const DeepCollectionEquality().hash(_origin),location);

@override
String toString() {
  return 'Character(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, image: $image, origin: $origin, location: $location)';
}


}

/// @nodoc
abstract mixin class _$CharacterCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$CharacterCopyWith(_Character value, $Res Function(_Character) _then) = __$CharacterCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String status, String species, String type, String gender, String image, Map<String, dynamic> origin, LocationInfo location
});


@override $LocationInfoCopyWith<$Res> get location;

}
/// @nodoc
class __$CharacterCopyWithImpl<$Res>
    implements _$CharacterCopyWith<$Res> {
  __$CharacterCopyWithImpl(this._self, this._then);

  final _Character _self;
  final $Res Function(_Character) _then;

/// Create a copy of Character
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? type = null,Object? gender = null,Object? image = null,Object? origin = null,Object? location = null,}) {
  return _then(_Character(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self._origin : origin // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationInfo,
  ));
}

/// Create a copy of Character
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationInfoCopyWith<$Res> get location {
  
  return $LocationInfoCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
mixin _$LocationInfo {

 String get name;
/// Create a copy of LocationInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationInfoCopyWith<LocationInfo> get copyWith => _$LocationInfoCopyWithImpl<LocationInfo>(this as LocationInfo, _$identity);

  /// Serializes this LocationInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationInfo&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'LocationInfo(name: $name)';
}


}

/// @nodoc
abstract mixin class $LocationInfoCopyWith<$Res>  {
  factory $LocationInfoCopyWith(LocationInfo value, $Res Function(LocationInfo) _then) = _$LocationInfoCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$LocationInfoCopyWithImpl<$Res>
    implements $LocationInfoCopyWith<$Res> {
  _$LocationInfoCopyWithImpl(this._self, this._then);

  final LocationInfo _self;
  final $Res Function(LocationInfo) _then;

/// Create a copy of LocationInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LocationInfo implements LocationInfo {
   _LocationInfo({required this.name});
  factory _LocationInfo.fromJson(Map<String, dynamic> json) => _$LocationInfoFromJson(json);

@override final  String name;

/// Create a copy of LocationInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationInfoCopyWith<_LocationInfo> get copyWith => __$LocationInfoCopyWithImpl<_LocationInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationInfo&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'LocationInfo(name: $name)';
}


}

/// @nodoc
abstract mixin class _$LocationInfoCopyWith<$Res> implements $LocationInfoCopyWith<$Res> {
  factory _$LocationInfoCopyWith(_LocationInfo value, $Res Function(_LocationInfo) _then) = __$LocationInfoCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$LocationInfoCopyWithImpl<$Res>
    implements _$LocationInfoCopyWith<$Res> {
  __$LocationInfoCopyWithImpl(this._self, this._then);

  final _LocationInfo _self;
  final $Res Function(_LocationInfo) _then;

/// Create a copy of LocationInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_LocationInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
