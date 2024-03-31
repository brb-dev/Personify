// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ind_record_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndRecordDtoImpl _$$IndRecordDtoImplFromJson(Map<String, dynamic> json) =>
    _$IndRecordDtoImpl(
      fullText: json['fullText'] as String? ?? '',
      fullSummary: json['fullSummary'] as String? ?? '',
      speakers: (json['speakers'] as List<dynamic>?)
              ?.map(
                  (e) => SpeakerDetailsDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$IndRecordDtoImplToJson(_$IndRecordDtoImpl instance) =>
    <String, dynamic>{
      'fullText': instance.fullText,
      'fullSummary': instance.fullSummary,
      'speakers': instance.speakers,
    };
