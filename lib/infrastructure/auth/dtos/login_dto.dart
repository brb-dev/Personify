import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/entities/login_entity.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const LoginDto._();

  const factory LoginDto({
    @JsonKey(name: 'displayName', defaultValue: '') required String displayName,
    @JsonKey(name: 'email', defaultValue: '') required String email,
    @JsonKey(name: 'photoURL', defaultValue: '') required String photoURL,
    @JsonKey(name: 'datagram_api_key', defaultValue: '')
    required String datagramKey,
    @JsonKey(name: 'openai_api_key', defaultValue: '')
    required String openAIKey,
  }) = _LoginDto;

  Login toDomain() {
    return Login(
      displayName: displayName,
      email: email,
      photoURL: photoURL,
      datagramKey: datagramKey,
      openAIKey: openAIKey,
    );
  }

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);
}
