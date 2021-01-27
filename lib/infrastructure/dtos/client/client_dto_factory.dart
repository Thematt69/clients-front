import '../dtos.exports.dart';

class ClientDtoFactory implements DtoFactory<ClientDto> {
  @override
  ClientDto fromJson(Map<String, dynamic> json) => ClientDto.fromJson(json);

  @override
  Map<String, dynamic> toJson(ClientDto dto) => dto.toJson();
}
