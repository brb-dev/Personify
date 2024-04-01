// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcript_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TranscriptDtoImpl _$$TranscriptDtoImplFromJson(Map<String, dynamic> json) =>
    _$TranscriptDtoImpl(
      transcript: readTranscript(json, 'transcript') as String? ?? '',
      summary: json['summary'] as String? ?? '',
    );

Map<String, dynamic> _$$TranscriptDtoImplToJson(_$TranscriptDtoImpl instance) =>
    <String, dynamic>{
      'transcript': instance.transcript,
      'summary': instance.summary,
    };
