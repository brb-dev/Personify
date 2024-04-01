// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDtoImpl _$$LoginDtoImplFromJson(Map<String, dynamic> json) =>
    _$LoginDtoImpl(
      displayName: json['displayName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      photoURL: json['photoURL'] as String? ?? '',
      datagramKey: json['datagram_api_key'] as String? ?? '',
      openAIKey: json['openai_api_key'] as String? ?? '',
    );

Map<String, dynamic> _$$LoginDtoImplToJson(_$LoginDtoImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'photoURL': instance.photoURL,
      'datagram_api_key': instance.datagramKey,
      'openai_api_key': instance.openAIKey,
    };
