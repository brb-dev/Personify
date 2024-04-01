import 'package:freezed_annotation/freezed_annotation.dart';

part 'transcript_entity.freezed.dart';

@freezed
class Transcript with _$Transcript {
  const Transcript._();

  const factory Transcript({
    required String transcript,
    required String summary,
  }) = _Transcript;

  factory Transcript.empty() => const Transcript(
        transcript: '',
        summary: '',
      );
}
