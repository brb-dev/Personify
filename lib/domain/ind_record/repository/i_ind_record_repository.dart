import 'package:dartz/dartz.dart';

import '../../core/error/api_failure.dart';
import '../entities/ind_record_entity.dart';

abstract class IIndRecordRepository {
  Future<Either<ApiFailure, IndRecord>> fetchIndRecord();
}
