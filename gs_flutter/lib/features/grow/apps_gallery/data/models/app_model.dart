import 'package:god_sufficient/features/grow/apps_gallery/domain/entities/app_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_model.g.dart';

@JsonSerializable(createToJson: false)
class AppModel extends AppEntity {
  AppModel({required super.id, required super.name});

  factory AppModel.fromJson(Map<String, dynamic> json) => _$AppModelFromJson(json);
}
