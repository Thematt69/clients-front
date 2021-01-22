import 'package:clients/domain/features/clients/repositories/clients_repository.dart';
import 'package:clients/infrastructure/dtos/dtos.exports.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'rest_api_repository_factory.dart';

class ClientsRepositoryImp extends RestApiRepositoryFactory<ClientsDto>
    implements ClientsRepository {
  ClientsRepositoryImp({
    @required Dio client,
    @required ClientsDtoFactory dtoFactory,
  }) : super(
          client: client,
          controller: "/client",
          dtoFactory: dtoFactory,
        );
}
