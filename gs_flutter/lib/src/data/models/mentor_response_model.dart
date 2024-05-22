import 'package:god_sufficient/src/domain/entities/mentor_response_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mentor_response_model.g.dart';

@JsonSerializable(createToJson: false)
class MentorResponseModel extends MentorResponseEntity {
  MentorResponseModel({required super.id, required super.name, required super.expertise, required super.description});

  factory MentorResponseModel.fromJson(Map<String, dynamic> json) => _$MentorResponseModelFromJson(json);
}
