import 'package:god_sufficient/features/help/mentor/find_mentor/domain/entities/mentor_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mentor_model.g.dart';

@JsonSerializable(createToJson: false)
class MentorModel extends MentorEntity {
  MentorModel({required super.id, required super.name, required super.expertise, required super.description});

  factory MentorModel.fromJson(Map<String, dynamic> json) => _$MentorModelFromJson(json);
}
