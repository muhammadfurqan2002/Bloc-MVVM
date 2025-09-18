// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatModel {

 String get name; int get age; List<String> get tvShow;
/// Create a copy of CatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatModelCopyWith<CatModel> get copyWith => _$CatModelCopyWithImpl<CatModel>(this as CatModel, _$identity);

  /// Serializes this CatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatModel&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&const DeepCollectionEquality().equals(other.tvShow, tvShow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,age,const DeepCollectionEquality().hash(tvShow));

@override
String toString() {
  return 'CatModel(name: $name, age: $age, tvShow: $tvShow)';
}


}

/// @nodoc
abstract mixin class $CatModelCopyWith<$Res>  {
  factory $CatModelCopyWith(CatModel value, $Res Function(CatModel) _then) = _$CatModelCopyWithImpl;
@useResult
$Res call({
 String name, int age, List<String> tvShow
});




}
/// @nodoc
class _$CatModelCopyWithImpl<$Res>
    implements $CatModelCopyWith<$Res> {
  _$CatModelCopyWithImpl(this._self, this._then);

  final CatModel _self;
  final $Res Function(CatModel) _then;

/// Create a copy of CatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? age = null,Object? tvShow = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,tvShow: null == tvShow ? _self.tvShow : tvShow // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CatModel].
extension CatModelPatterns on CatModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatModel value)  $default,){
final _that = this;
switch (_that) {
case _CatModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatModel value)?  $default,){
final _that = this;
switch (_that) {
case _CatModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int age,  List<String> tvShow)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatModel() when $default != null:
return $default(_that.name,_that.age,_that.tvShow);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int age,  List<String> tvShow)  $default,) {final _that = this;
switch (_that) {
case _CatModel():
return $default(_that.name,_that.age,_that.tvShow);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int age,  List<String> tvShow)?  $default,) {final _that = this;
switch (_that) {
case _CatModel() when $default != null:
return $default(_that.name,_that.age,_that.tvShow);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatModel implements CatModel {
   _CatModel({this.name = '', this.age = 0, final  List<String> tvShow = const []}): _tvShow = tvShow;
  factory _CatModel.fromJson(Map<String, dynamic> json) => _$CatModelFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  int age;
 final  List<String> _tvShow;
@override@JsonKey() List<String> get tvShow {
  if (_tvShow is EqualUnmodifiableListView) return _tvShow;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tvShow);
}


/// Create a copy of CatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatModelCopyWith<_CatModel> get copyWith => __$CatModelCopyWithImpl<_CatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatModel&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&const DeepCollectionEquality().equals(other._tvShow, _tvShow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,age,const DeepCollectionEquality().hash(_tvShow));

@override
String toString() {
  return 'CatModel(name: $name, age: $age, tvShow: $tvShow)';
}


}

/// @nodoc
abstract mixin class _$CatModelCopyWith<$Res> implements $CatModelCopyWith<$Res> {
  factory _$CatModelCopyWith(_CatModel value, $Res Function(_CatModel) _then) = __$CatModelCopyWithImpl;
@override @useResult
$Res call({
 String name, int age, List<String> tvShow
});




}
/// @nodoc
class __$CatModelCopyWithImpl<$Res>
    implements _$CatModelCopyWith<$Res> {
  __$CatModelCopyWithImpl(this._self, this._then);

  final _CatModel _self;
  final $Res Function(_CatModel) _then;

/// Create a copy of CatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? age = null,Object? tvShow = null,}) {
  return _then(_CatModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,tvShow: null == tvShow ? _self._tvShow : tvShow // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
