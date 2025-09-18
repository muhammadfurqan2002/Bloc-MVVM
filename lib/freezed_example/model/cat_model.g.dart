// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatModel _$CatModelFromJson(Map<String, dynamic> json) => _CatModel(
  name: json['name'] as String? ?? '',
  age: (json['age'] as num?)?.toInt() ?? 0,
  tvShow:
      (json['tvShow'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$CatModelToJson(_CatModel instance) => <String, dynamic>{
  'name': instance.name,
  'age': instance.age,
  'tvShow': instance.tvShow,
};
