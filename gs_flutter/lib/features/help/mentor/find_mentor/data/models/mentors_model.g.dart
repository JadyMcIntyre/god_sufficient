// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentorsModel _$MentorsModelFromJson(Map<String, dynamic> json) => MentorsModel(
      mentors: (json['mentors'] as List<dynamic>?)
          ?.map((e) => MentorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
