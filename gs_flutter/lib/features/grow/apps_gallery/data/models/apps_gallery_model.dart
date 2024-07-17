import 'package:god_sufficient/features/grow/apps_gallery/domain/entities/app_gallery_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apps_gallery_model.g.dart';

@JsonSerializable(createToJson: false)
class AppsGalleryModel extends AppGalleryEntity {
  AppsGalleryModel({required super.id, required super.name});

  factory AppsGalleryModel.fromJson(Map<String, dynamic> json) => _$AppsGalleryModelFromJson(json);
}
