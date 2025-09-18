import 'package:freezed_annotation/freezed_annotation.dart';
part 'cat_model.freezed.dart';
part 'cat_model.g.dart';

@freezed
abstract class CatModel with _$CatModel{
  factory CatModel({
    @Default('') String name,
    @Default(0) int age,
    @Default([]) List<String> tvShow
  })=_CatModel;

  factory CatModel.fromJson(Map<String,dynamic>json)=> _$CatModelFromJson(json);
}