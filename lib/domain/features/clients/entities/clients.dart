import '../../../../infrastructure/dtos/dtos.exports.dart';
import '../../../core/entities/entity_factory.dart';

class Clients implements EntityFactory<Clients, ClientsDto> {
  String guid;
  String first;
  String last;
  String street;
  String city;
  String zip;

  Clients({
    this.guid,
    this.first,
    this.last,
    this.street,
    this.city,
    this.zip,
  });

  Clients copyWith({
    String guid,
    String first,
    String last,
    String street,
    String city,
    String zip,
  }) {
    return Clients(
      guid: guid ?? this.guid,
      first: first ?? this.first,
      last: last ?? this.last,
      street: street ?? this.street,
      city: city ?? this.city,
      zip: zip ?? this.zip,
    );
  }

  @override
  Clients fromDto(ClientsDto dto) {
    return Clients(
      guid: dto.guid,
      first: dto.first,
      last: dto.last,
      street: dto.street,
      city: dto.city,
      zip: dto.zip,
    );
  }

  @override
  ClientsDto toDto(Clients entity) {
    return ClientsDto(
      guid: entity.guid,
      first: entity.first,
      last: entity.last,
      street: entity.street,
      city: entity.city,
      zip: entity.zip,
    );
  }
}
