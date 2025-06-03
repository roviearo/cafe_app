import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';

@freezed
abstract class MenuModel with _$MenuModel {
  const factory MenuModel(
    int id,
    String title,
    String imageUrl,
    String ingredients,
  ) = _MenuModel;
}
