import 'package:freezed_annotation/freezed_annotation.dart';

part 'speaker_details_entity.freezed.dart';

@freezed
class SpeakerDetails with _$SpeakerDetails {
  const SpeakerDetails._();

  const factory SpeakerDetails({
    required String displayName,
    required String personalityScore,
    required Map<String, String> emotionMap,
    required Map<String, String> highlightMap,
  }) = _SpeakerDetails;

  factory SpeakerDetails.empty() => const SpeakerDetails(
        displayName: '',
        personalityScore: '',
        emotionMap: <String, String>{},
        highlightMap: <String, String>{},
      );
}
