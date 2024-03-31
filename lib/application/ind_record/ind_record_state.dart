part of 'ind_record_bloc.dart';

@freezed
class IndRecordState with _$IndRecordState {
  const IndRecordState._();

  const factory IndRecordState({
    required bool isFetching,
    required IndRecord data,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _IndRecordState;

  factory IndRecordState.initial() => IndRecordState(
        isFetching: false,
        data: IndRecord.empty(),
        apiFailureOrSuccessOption: none(),
      );
}
