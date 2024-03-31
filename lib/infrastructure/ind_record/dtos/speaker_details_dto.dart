import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/ind_record/entities/speaker_details_entity.dart';

part 'speaker_details_dto.freezed.dart';
part 'speaker_details_dto.g.dart';

@freezed
class SpeakerDetailsDto with _$SpeakerDetailsDto {
  const SpeakerDetailsDto._();

  const factory SpeakerDetailsDto({
    @JsonKey(name: 'displayName', defaultValue: '') required String displayName,
    @JsonKey(name: 'personalityScore', defaultValue: '')
    required String personalityScore,
    @JsonKey(name: 'emotionMap', defaultValue: <String, String>{})
    required Map<String, String> emotionMap,
    @JsonKey(name: 'highlightMap', defaultValue: <String, String>{})
    required Map<String, String> highlightMap,
  }) = _SpeakerDetailsDto;

  SpeakerDetails toDomain() {
    return SpeakerDetails(
      displayName: displayName,
      personalityScore: personalityScore,
      emotionMap: emotionMap,
      highlightMap: highlightMap,
    );
  }

  factory SpeakerDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$SpeakerDetailsDtoFromJson(json);
}
