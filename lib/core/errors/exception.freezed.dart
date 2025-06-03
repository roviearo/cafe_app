// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$APIException {

 String get message; int get statusCode; String? get errorCode;
/// Create a copy of APIException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$APIExceptionCopyWith<APIException> get copyWith => _$APIExceptionCopyWithImpl<APIException>(this as APIException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is APIException&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode,errorCode);

@override
String toString() {
  return 'APIException(message: $message, statusCode: $statusCode, errorCode: $errorCode)';
}


}

/// @nodoc
abstract mixin class $APIExceptionCopyWith<$Res>  {
  factory $APIExceptionCopyWith(APIException value, $Res Function(APIException) _then) = _$APIExceptionCopyWithImpl;
@useResult
$Res call({
 String message, int statusCode, String? errorCode
});




}
/// @nodoc
class _$APIExceptionCopyWithImpl<$Res>
    implements $APIExceptionCopyWith<$Res> {
  _$APIExceptionCopyWithImpl(this._self, this._then);

  final APIException _self;
  final $Res Function(APIException) _then;

/// Create a copy of APIException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? statusCode = null,Object? errorCode = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _APIException implements APIException {
  const _APIException({required this.message, required this.statusCode, this.errorCode});
  

@override final  String message;
@override final  int statusCode;
@override final  String? errorCode;

/// Create a copy of APIException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$APIExceptionCopyWith<_APIException> get copyWith => __$APIExceptionCopyWithImpl<_APIException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _APIException&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode,errorCode);

@override
String toString() {
  return 'APIException(message: $message, statusCode: $statusCode, errorCode: $errorCode)';
}


}

/// @nodoc
abstract mixin class _$APIExceptionCopyWith<$Res> implements $APIExceptionCopyWith<$Res> {
  factory _$APIExceptionCopyWith(_APIException value, $Res Function(_APIException) _then) = __$APIExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, int statusCode, String? errorCode
});




}
/// @nodoc
class __$APIExceptionCopyWithImpl<$Res>
    implements _$APIExceptionCopyWith<$Res> {
  __$APIExceptionCopyWithImpl(this._self, this._then);

  final _APIException _self;
  final $Res Function(_APIException) _then;

/// Create a copy of APIException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = null,Object? errorCode = freezed,}) {
  return _then(_APIException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
