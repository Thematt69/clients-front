import 'package:clients/domain/features/clients/entities/clients.dart';
import 'package:clients/infrastructure/dtos/client/client_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Client client;
  ClientDto clientDto;
  setUp(() {
    client = Client(
      guid: 'guid',
      first: 'first',
      last: 'last',
      street: 'street',
      city: 'city',
      zip: 11111,
    );
    clientDto = ClientDto(
      guid: 'guid',
      first: 'first',
      last: 'last',
      street: 'street',
      city: 'city',
      zip: 11111,
    );
  });

  validator(left, right) {
    expect(left.guid, right.guid);
    expect(left.first, right.first);
    expect(left.last, right.last);
    expect(left.street, right.street);
    expect(left.city, right.city);
    expect(left.zip, right.zip);
  }

  group('Client', () {
    test('toDto', () {
      ClientDto result = client.toDto;

      validator(result, clientDto);
    });
    test('List - toDto', () {
      List<ClientDto> result = [client, client].toDto;

      validator(result[0], clientDto);
      validator(result[1], clientDto);
    });
    test('toEntity', () {
      Client result = clientDto.toEntity;

      validator(result, client);
    });
    test('List - toEntity', () {
      List<Client> result = [clientDto, clientDto].toEntity;

      validator(result[0], client);
      validator(result[1], client);
    });
  });
}
