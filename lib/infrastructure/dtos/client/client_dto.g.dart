// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientDto _$_$_ClientDtoFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['guid']);
  return _$_ClientDto(
    guid: json['guid'] as String,
    first: json['first'] as String,
    last: json['last'] as String,
    street: json['street'] as String,
    city: json['city'] as String,
    zip: json['zip'] as int,
  );
}

Map<String, dynamic> _$_$_ClientDtoToJson(_$_ClientDto instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'first': instance.first,
      'last': instance.last,
      'street': instance.street,
      'city': instance.city,
      'zip': instance.zip,
    };
