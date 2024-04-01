part of 'ind_record_bloc.dart';

@freezed
class IndRecordEvent with _$IndRecordEvent {
  const factory IndRecordEvent.init() = _Init;
  const factory IndRecordEvent.fetchData() = _FetchData;
  const factory IndRecordEvent.fetchTranscript(
      {required String datagramApiKey}) = _FetchTranscript;
  const factory IndRecordEvent.fetchSummary({required String openAiApiKey}) =
      _FetchSummary;
}
