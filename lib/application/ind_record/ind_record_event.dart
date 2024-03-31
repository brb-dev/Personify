part of 'ind_record_bloc.dart';

@freezed
class IndRecordEvent with _$IndRecordEvent {
  const factory IndRecordEvent.init() = _Init;
  const factory IndRecordEvent.fetchData() = _FetchData;
}
