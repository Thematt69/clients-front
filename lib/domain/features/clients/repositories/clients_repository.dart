import 'package:clients/infrastructure/dtos/dtos.exports.dart';
import 'package:clients/infrastructure/repositories/repositories.exports.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class ClientsRepository extends RestApiRepositoryFactory<ClientsDto> {
  ClientsRepository({
    @required Dio client,
    @required String controller,
    @required ClientsDtoFactory dtoFactory,
  }) : super(
          client: client,
          controller: controller,
          dtoFactory: dtoFactory,
        );
}
