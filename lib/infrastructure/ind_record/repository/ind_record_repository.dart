import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../config.dart';
import '../../../domain/core/error/api_failure.dart';
import '../../../domain/core/error/failure_handler.dart';
import '../../../domain/ind_record/entities/ind_record_entity.dart';
import '../../../domain/ind_record/entities/transcript_entity.dart';
import '../../../domain/ind_record/repository/i_ind_record_repository.dart';
import '../datasource/ind_record_local.dart';
import '../datasource/ind_record_remote.dart';

class IndRecordRepository implements IIndRecordRepository {
  final Config config;
  final IndRecordRemoteDataSource remoteDataSource;
  final IndRecordLocalDataSource localDataSource;

  IndRecordRepository({
    required this.config,
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<ApiFailure, IndRecord>> fetchIndRecord() async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final record = await localDataSource.fetchData();

        return Right(record);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final record = await remoteDataSource.fetchData();

      return Right(record);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Transcript>> fetchTranscript({
    required File audioFile,
    required String datagrapApiKey,
  }) async {
    try {
      final record = await remoteDataSource.fetchTranscript(
        audioFile: audioFile,
        datagramApiKey: datagrapApiKey,
      );

      return Right(record);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, String>> fetchSummary({
    required String transcript,
    required String opeAIApiKey,
  }) async {
    try {
      final summary = await remoteDataSource.fetchSummary(
        transcript: transcript,
        openAIApiKey: opeAIApiKey,
      );

      return Right(summary);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
