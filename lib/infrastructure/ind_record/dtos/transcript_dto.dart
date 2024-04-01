import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/ind_record/entities/transcript_entity.dart';

part 'transcript_dto.freezed.dart';
part 'transcript_dto.g.dart';

@freezed
class TranscriptDto with _$TranscriptDto {
  const TranscriptDto._();

  const factory TranscriptDto({
    @JsonKey(name: 'transcript', readValue: readTranscript, defaultValue: '')
    required String transcript,
    @JsonKey(name: 'summary', defaultValue: '') required String summary,
  }) = _TranscriptDto;

  Transcript toDomain() {
    return Transcript(
      transcript: transcript,
      summary: summary,
    );
  }

  factory TranscriptDto.fromJson(Map<String, dynamic> json) =>
      _$TranscriptDtoFromJson(json);
}

String readTranscript(Map json, String _) {
  final channels = json['results']['channels'] as List;
  final channel = channels[0] as Map;
  final alternatives = channel['alternatives'] as List;
  final alternative = alternatives[0];

  return alternative['transcript'];
}
