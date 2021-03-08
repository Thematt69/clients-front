import 'dart:convert';

import 'package:clients/infrastructure/api/rest_api_response.dart';
import 'package:clients/infrastructure/dtos/client/client_dto.dart';
import 'package:clients/infrastructure/repositories/clients_repository_imp.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../fixtures/fixture_reader.dart';

class DioMock extends Mock implements Dio {}

void main() {
  DioMock dioMock;
  ClientsRepositoryImp clientsRepositoryImp;

  List<dynamic> indexJson, showJson;

  setUp(() {
    dioMock = DioMock();
    clientsRepositoryImp = ClientsRepositoryImp(client: dioMock);

    indexJson = json.decode(fixture("client/index.json"));
    showJson = json.decode(fixture("client/show.json"));
  });

  group('ClientRepositoryImpl', () {
    test('index', () async {
      when(dioMock.get(any)).thenAnswer(
        (_) => Future.value(
          Response(
            data: indexJson,
            statusCode: 200,
          ),
        ),
      );

      RestApiResponse<List<ClientDto>> response =
          await clientsRepositoryImp.index();

      expect(response.data.length, 13);
    });
    test('show', () async {
      when(dioMock.get(any)).thenAnswer(
        (_) => Future.value(
          Response(
            data: showJson,
            statusCode: 200,
          ),
        ),
      );

      RestApiResponse<List<ClientDto>> response =
          await clientsRepositoryImp.show(value: 'matth');

      expect(response.data.length, 13);
    });
  });
}
