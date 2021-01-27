import '../../../../infrastructure/dtos/dtos.exports.dart';
import '../../../core/entities/entity_factory.dart';

class Client implements EntityFactory<Client, ClientDto> {
  String guid;
  String first;
  String last;
  String street;
  String city;
  int zip;

  String get fulllname => "$first ${last.toUpperCase()}";

  Client({
    this.guid,
    this.first,
    this.last,
    this.street,
    this.city,
    this.zip,
  });

  Client copyWith({
    String guid,
    String first,
    String last,
    String street,
    String city,
    int zip,
  }) {
    return Client(
      guid: guid ?? this.guid,
      first: first ?? this.first,
      last: last ?? this.last,
      street: street ?? this.street,
      city: city ?? this.city,
      zip: zip ?? this.zip,
    );
  }

  @override
  Client fromDto(ClientDto dto) {
    return Client(
      guid: dto.guid,
      first: dto.first,
      last: dto.last,
      street: dto.street,
      city: dto.city,
      zip: dto.zip,
    );
  }

  @override
  ClientDto toDto(Client entity) {
    return ClientDto(
      guid: entity.guid,
      first: entity.first,
      last: entity.last,
      street: entity.street,
      city: entity.city,
      zip: entity.zip,
    );
  }
}
