// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clients_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientsDto _$_$_ClientsDtoFromJson(Map<String, dynamic> json) {
  return _$_ClientsDto(
    guid: json['guid'] as String,
    first: json['first'] as String,
    last: json['last'] as String,
    street: json['street'] as String,
    city: json['city'] as String,
    zip: json['zip'] as String,
  );
}

Map<String, dynamic> _$_$_ClientsDtoToJson(_$_ClientsDto instance) =>
    <String, dynamic>{
      'guid': instance.guid,
      'first': instance.first,
      'last': instance.last,
      'street': instance.street,
      'city': instance.city,
      'zip': instance.zip,
    };
