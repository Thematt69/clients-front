import 'package:clients/domain/features/clients/repositories/clients_repository.dart';
import 'package:clients/infrastructure/dtos/dtos.exports.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ClientsRepositoryImp extends ClientsRepository {
  ClientsRepositoryImp({
    @required Dio client,
    @required ClientsDtoFactory clientsDtoFactory,
  }) : super(
          client: client,
          controller: "/client",
          dtoFactory: clientsDtoFactory,
        );
}
