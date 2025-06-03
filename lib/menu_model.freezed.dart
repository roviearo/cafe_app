// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MenuModel {

 int get id; String get title; String get imageUrl; String get ingredients;
/// Create a copy of MenuModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuModelCopyWith<MenuModel> get copyWith => _$MenuModelCopyWithImpl<MenuModel>(this as MenuModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,ingredients);

@override
String toString() {
  return 'MenuModel(id: $id, title: $title, imageUrl: $imageUrl, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class $MenuModelCopyWith<$Res>  {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) _then) = _$MenuModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String imageUrl, String ingredients
});




}
/// @nodoc
class _$MenuModelCopyWithImpl<$Res>
    implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._self, this._then);

  final MenuModel _self;
  final $Res Function(MenuModel) _then;

/// Create a copy of MenuModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? imageUrl = null,Object? ingredients = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _MenuModel implements MenuModel {
  const _MenuModel(this.id, this.title, this.imageUrl, this.ingredients);
  

@override final  int id;
@override final  String title;
@override final  String imageUrl;
@override final  String ingredients;

/// Create a copy of MenuModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuModelCopyWith<_MenuModel> get copyWith => __$MenuModelCopyWithImpl<_MenuModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,ingredients);

@override
String toString() {
  return 'MenuModel(id: $id, title: $title, imageUrl: $imageUrl, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class _$MenuModelCopyWith<$Res> implements $MenuModelCopyWith<$Res> {
  factory _$MenuModelCopyWith(_MenuModel value, $Res Function(_MenuModel) _then) = __$MenuModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String imageUrl, String ingredients
});




}
/// @nodoc
class __$MenuModelCopyWithImpl<$Res>
    implements _$MenuModelCopyWith<$Res> {
  __$MenuModelCopyWithImpl(this._self, this._then);

  final _MenuModel _self;
  final $Res Function(_MenuModel) _then;

/// Create a copy of MenuModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? imageUrl = null,Object? ingredients = null,}) {
  return _then(_MenuModel(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
