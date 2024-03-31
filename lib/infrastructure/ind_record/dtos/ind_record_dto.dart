import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/ind_record/entities/ind_record_entity.dart';
import 'speaker_details_dto.dart';

part 'ind_record_dto.freezed.dart';
part 'ind_record_dto.g.dart';

@freezed
class IndRecordDto with _$IndRecordDto {
  const IndRecordDto._();

  const factory IndRecordDto({
    @JsonKey(name: 'fullText', defaultValue: '') required String fullText,
    @JsonKey(name: 'fullSummary', defaultValue: '') required String fullSummary,
    @JsonKey(name: 'speakers', defaultValue: <SpeakerDetailsDto>[])
    required List<SpeakerDetailsDto> speakers,
  }) = _IndRecordDto;

  IndRecord toDomain() {
    return IndRecord(
      fullText: fullText,
      fullSummary: fullSummary,
      speakers: speakers.map((e) => e.toDomain()).toList(),
    );
  }

  factory IndRecordDto.fromJson(Map<String, dynamic> json) =>
      _$IndRecordDtoFromJson(json);
}
