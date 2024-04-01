import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:personify/domain/ind_record/entities/transcript_entity.dart';

import '../../core/error/api_failure.dart';
import '../entities/ind_record_entity.dart';

abstract class IIndRecordRepository {
  Future<Either<ApiFailure, IndRecord>> fetchIndRecord();
  Future<Either<ApiFailure, Transcript>> fetchTranscript({
    required File audioFile,
    required String datagrapApiKey,
  });
  Future<Either<ApiFailure, String>> fetchSummary({
    required String transcript,
    required String opeAIApiKey,
  });
}
