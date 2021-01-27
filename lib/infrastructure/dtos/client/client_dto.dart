import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_dto.freezed.dart';
part 'client_dto.g.dart';

@freezed
abstract class ClientDto with _$ClientDto {
  const factory ClientDto({
    @JsonKey(name: 'guid') String guid,
    @JsonKey(name: 'first') String first,
    @JsonKey(name: 'last') String last,
    @JsonKey(name: 'street') String street,
    @JsonKey(name: 'city') String city,
    @JsonKey(name: 'zip') int zip,
  }) = _ClientDto;
  factory ClientDto.fromJson(Map<String, dynamic> json) =>
      _$ClientDtoFromJson(json);
}
