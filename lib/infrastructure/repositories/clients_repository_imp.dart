import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../domain/features/clients/repositories/clients_repository.dart';
import 'rest_api_repository.dart';

class ClientsRepositoryImp extends RestApiRepository
    implements ClientsRepository {
  ClientsRepositoryImp({
    @required Dio client,
  }) : super(client: client, controller: "/clients");
}
