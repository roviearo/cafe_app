// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetUserParams {

 String get id;
/// Create a copy of GetUserParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserParamsCopyWith<GetUserParams> get copyWith => _$GetUserParamsCopyWithImpl<GetUserParams>(this as GetUserParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserParams&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GetUserParams(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetUserParamsCopyWith<$Res>  {
  factory $GetUserParamsCopyWith(GetUserParams value, $Res Function(GetUserParams) _then) = _$GetUserParamsCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetUserParamsCopyWithImpl<$Res>
    implements $GetUserParamsCopyWith<$Res> {
  _$GetUserParamsCopyWithImpl(this._self, this._then);

  final GetUserParams _self;
  final $Res Function(GetUserParams) _then;

/// Create a copy of GetUserParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _GetUserParams implements GetUserParams {
  const _GetUserParams(this.id);
  

@override final  String id;

/// Create a copy of GetUserParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUserParamsCopyWith<_GetUserParams> get copyWith => __$GetUserParamsCopyWithImpl<_GetUserParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserParams&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GetUserParams(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetUserParamsCopyWith<$Res> implements $GetUserParamsCopyWith<$Res> {
  factory _$GetUserParamsCopyWith(_GetUserParams value, $Res Function(_GetUserParams) _then) = __$GetUserParamsCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetUserParamsCopyWithImpl<$Res>
    implements _$GetUserParamsCopyWith<$Res> {
  __$GetUserParamsCopyWithImpl(this._self, this._then);

  final _GetUserParams _self;
  final $Res Function(_GetUserParams) _then;

/// Create a copy of GetUserParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetUserParams(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
