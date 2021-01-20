import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'clients_dto.freezed.dart';
part 'clients_dto.g.dart';

@freezed
abstract class ClientsDto with _$ClientsDto {
  const factory ClientsDto({
    @JsonKey(name: 'guid') String guid,
    @JsonKey(name: 'first') String first,
    @JsonKey(name: 'last') String last,
    @JsonKey(name: 'street') String street,
    @JsonKey(name: 'city') String city,
    @JsonKey(name: 'zip') String zip,
  }) = _ClientsDto;
  factory ClientsDto.fromJson(Map<String, dynamic> json) =>
      _$ClientsDtoFromJson(json);
}
