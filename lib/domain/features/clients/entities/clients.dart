import 'package:clients/infrastructure/dtos/dtos.exports.dart';
import '../../../../infrastructure/dtos/dtos.exports.dart';

class Client {
  String guid;
  String first;
  String last;
  String street;
  String city;
  int zip;

  String get fullname => "$first ${last.toUpperCase()}";

  Client({
    this.guid,
    this.first,
    this.last,
    this.street,
    this.city,
    this.zip,
  });
}

extension OnClient on Client {
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

  ClientDto get toDto {
    return ClientDto(
      guid: this.guid,
      first: this.first,
      last: this.last,
      street: this.street,
      city: this.city,
      zip: this.zip,
    );
  }
}

extension OnListClient on List<Client> {
  List<ClientDto> get toDto {
    List<ClientDto> clientDtoList = <ClientDto>[];

    this.forEach((entity) => clientDtoList.add(entity.toDto));
    return clientDtoList;
  }
}

extension OnClientDto on ClientDto {
  Client get toEntity {
    return Client(
      guid: this.guid,
      first: this.first,
      last: this.last,
      street: this.street,
      city: this.city,
      zip: this.zip,
    );
  }
}

extension OnListClientDto on List<ClientDto> {
  List<Client> get toEntity {
    List<Client> clientList = <Client>[];

    this.forEach((dto) => clientList.add(dto.toEntity));
    return clientList;
  }
}
