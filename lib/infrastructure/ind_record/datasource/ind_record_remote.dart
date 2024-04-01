import 'dart:convert';
import 'dart:io';

import 'package:dart_openai/dart_openai.dart';
import 'package:deepgram_speech_to_text/deepgram_speech_to_text.dart';
import 'package:flutter/services.dart';

import '../../../config.dart';
import '../../../domain/core/error/exception_handler.dart';
import '../../../domain/ind_record/entities/ind_record_entity.dart';
import '../../../domain/ind_record/entities/transcript_entity.dart';
import '../dtos/ind_record_dto.dart';
import '../dtos/transcript_dto.dart';

class IndRecordRemoteDataSource {
  DataSourceExceptionHandler dataSourceExceptionHandler;
  Config config;
  IndRecordRemoteDataSource({
    required this.dataSourceExceptionHandler,
    required this.config,
  });

  Future<IndRecord> fetchData() async {
    return await dataSourceExceptionHandler.handle(() async {
      await Future.delayed(const Duration(seconds: 3));
      final data = json.decode(
        await rootBundle.loadString('assets/response/ind_record_response.json'),
      );

      return IndRecordDto.fromJson(data).toDomain();
    });
  }

  Future<Transcript> fetchTranscript(
      {required File audioFile, required String datagramApiKey}) async {
    return await dataSourceExceptionHandler.handle(() async {
      Deepgram deepgram = Deepgram(datagramApiKey, baseQueryParams: {
        'punctuate': true,
        'utterances': true,
      });
      String json1 = await deepgram.transcribeFromFile(audioFile);
      final data1 = json.decode(json1);

      return TranscriptDto.fromJson(data1).toDomain();
    });
  }

  Future<String> fetchSummary(
      {required String transcript, required String openAIApiKey}) async {
    return await dataSourceExceptionHandler.handle(() async {
      OpenAI.apiKey = openAIApiKey;
      OpenAI.requestsTimeOut = const Duration(seconds: 60);
      OpenAI.baseUrl = "https://api.openai.com";
      OpenAICompletionModel completion =
          await OpenAI.instance.completion.create(
        model: "gpt-3.5-turbo-instruct",
        prompt: "Summarize the following text: $transcript",
        maxTokens: 2000,
      );

      return completion.choices.first.text.trim();
    });
  }
}
