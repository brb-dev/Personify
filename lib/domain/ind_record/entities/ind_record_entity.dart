import 'package:freezed_annotation/freezed_annotation.dart';

import 'speaker_details_entity.dart';

part 'ind_record_entity.freezed.dart';

@freezed
class IndRecord with _$IndRecord {
  const IndRecord._();

  const factory IndRecord({
    required String fullText,
    required String fullSummary,
    required List<SpeakerDetails> speakers,
  }) = _IndRecord;

  factory IndRecord.empty() => const IndRecord(
        fullText: '',
        fullSummary: '',
        speakers: <SpeakerDetails>[],
      );
}
