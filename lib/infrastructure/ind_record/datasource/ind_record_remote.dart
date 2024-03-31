import 'dart:convert';

import 'package:flutter/services.dart';

import '../../../config.dart';
import '../../../domain/core/error/exception_handler.dart';
import '../../../domain/ind_record/entities/ind_record_entity.dart';
import '../dtos/ind_record_dto.dart';

class IndRecordRemoteDataSource {
  DataSourceExceptionHandler dataSourceExceptionHandler;
  Config config;
  IndRecordRemoteDataSource({
    required this.dataSourceExceptionHandler,
    required this.config,
  });

  Future<IndRecord> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    final data = json.decode(
      await rootBundle.loadString('assets/response/ind_record_response.json'),
    );

    return IndRecordDto.fromJson(data).toDomain();
  }
}
