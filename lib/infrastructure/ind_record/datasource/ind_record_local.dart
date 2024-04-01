import 'dart:convert';

import 'package:flutter/services.dart';

import '../../../domain/ind_record/entities/ind_record_entity.dart';
import '../../../domain/ind_record/entities/transcript_entity.dart';
import '../dtos/ind_record_dto.dart';
import '../dtos/transcript_dto.dart';

class IndRecordLocalDataSource {
  Future<IndRecord> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    final data = json.decode(
      await rootBundle.loadString('assets/response/ind_record_response.json'),
    );

    return IndRecordDto.fromJson(data).toDomain();
  }

  Future<Transcript> fetchTranscript() async {
    await Future.delayed(const Duration(seconds: 3));
    final data = json.decode(
      await rootBundle.loadString('assets/response/transcript_response.json'),
    );

    return TranscriptDto.fromJson(data).toDomain();
  }

  Future<String> fetchSummary() async {
    await Future.delayed(const Duration(seconds: 3));

    return 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.';
  }
}
