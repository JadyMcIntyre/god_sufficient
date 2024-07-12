import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/mentors_entity.dart';
import 'mentor_model.dart';

part 'mentors_model.g.dart';

@JsonSerializable(createToJson: false)
class MentorsModel extends MentorsEntity {
  MentorsModel({super.mentors});

  factory MentorsModel.fromJson(Map<String, dynamic> json) => _$MentorsModelFromJson(json);
}

extension ToEntity on MentorsModel {
  MentorsEntity toEntity() {
    return MentorsEntity(mentors: mentors);
  }
}
