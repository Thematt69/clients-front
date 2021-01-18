import '../dtos.exports.dart';

class ClientsDtoFactory implements DtoFactory<ClientsDto> {
  @override
  ClientsDto fromJson(Map<String, dynamic> json) => ClientsDto.fromJson(json);

  @override
  Map<String, dynamic> toJson(ClientsDto dto) => dto.toJson();
}
