import 'package:god_sufficient/features/mentor/domain/entities/mentor_entity.dart';
import 'package:god_sufficient/src/domain/entities/mentor_response_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mentor_model.g.dart';

@JsonSerializable(createToJson: false)
class MentorModel extends MentorResponseEntity {
  MentorModel({required super.id, required super.name, required super.expertise, required super.description});

  factory MentorModel.fromJson(Map<String, dynamic> json) => _$MentorModelFromJson(json);
}

extension ToEntity on MentorModel {
  MentorEntity toEntity() {
    return MentorEntity(
      id: id,
      name: name,
      expertise: expertise,
      description: description,
    );
  }
}
