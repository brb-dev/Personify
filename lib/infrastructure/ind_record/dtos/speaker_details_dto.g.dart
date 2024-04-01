// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speaker_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeakerDetailsDtoImpl _$$SpeakerDetailsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SpeakerDetailsDtoImpl(
      displayName: json['displayName'] as String? ?? '',
      personalityScore: json['personalityScore'] as String? ?? '',
      emotionMap: (json['emotionMap'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          {},
      highlightMap: (json['highlightMap'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          {},
    );

Map<String, dynamic> _$$SpeakerDetailsDtoImplToJson(
        _$SpeakerDetailsDtoImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'personalityScore': instance.personalityScore,
      'emotionMap': instance.emotionMap,
      'highlightMap': instance.highlightMap,
    };
