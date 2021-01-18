import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/infrastructure/dtos/dtos.exports.dart';

class ClientsFactory implements EntityFactory<Clients, ClientsDto> {
  @override
  Clients fromDto(ClientsDto dto) {
    return Clients();
  }

  @override
  ClientsDto toDto(Clients entity) {
    return ClientsDto();
  }
}
