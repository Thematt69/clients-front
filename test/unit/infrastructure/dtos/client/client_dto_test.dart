import 'dart:convert';

import 'package:clients/infrastructure/dtos/client/client_dto.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  ClientDto clientDto;
  Map<String, dynamic> baseJson;
  setUp(() {
    clientDto = ClientDto(
      guid: '000041b9-e2d6-57c7-925b-a111eac393b4',
      first: 'Dennis',
      last: 'Mills',
      street: 'Ehaip Terrace',
      city: 'Bilifef',
      zip: 73270,
    );
    baseJson = json.decode(fixture("client/index.json"))[0];
  });

  group("Client Dto", () {
    test("fromJson", () {
      ClientDto result = ClientDto.fromJson(baseJson);

      expect(result, clientDto);
    });

    test("toJson", () {
      Map<String, dynamic> result = clientDto.toJson();

      expect(result["guid"], baseJson["guid"]);
      expect(result["first"], baseJson["first"]);
      expect(result["last"], baseJson["last"]);
      expect(result["street"], baseJson["street"]);
      expect(result["city"], baseJson["city"]);
      expect(result["zip"], baseJson["zip"]);
    });
  });
}
