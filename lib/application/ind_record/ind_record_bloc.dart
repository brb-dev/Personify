import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/error/api_failure.dart';
import '../../domain/ind_record/entities/ind_record_entity.dart';
import '../../domain/ind_record/repository/i_ind_record_repository.dart';

part 'ind_record_bloc.freezed.dart';
part 'ind_record_event.dart';
part 'ind_record_state.dart';

class IndRecordBloc extends Bloc<IndRecordEvent, IndRecordState> {
  final IIndRecordRepository indRecordRepository;
  IndRecordBloc({
    required this.indRecordRepository,
  }) : super(IndRecordState.initial()) {
    on<IndRecordEvent>(_onEvent);
  }

  Future<void> _onEvent(
      IndRecordEvent event, Emitter<IndRecordState> emit) async {
    await event.map(
      init: (_) async => emit(IndRecordState.initial()),
      fetchData: (_) async {
        emit(
          state.copyWith(
            isFetching: true,
            apiFailureOrSuccessOption: none(),
          ),
        );

        final recordOrError = await indRecordRepository.fetchIndRecord();
        recordOrError.fold(
          (error) => emit(
            state.copyWith(
              isFetching: false,
              apiFailureOrSuccessOption: optionOf(recordOrError),
            ),
          ),
          (success) => emit(
            state.copyWith(
              isFetching: false,
              data: success,
            ),
          ),
        );
      },
    );
  }
}
