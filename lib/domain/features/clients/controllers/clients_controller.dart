import 'package:clients/domain/core/controllers/controller_factory.dart';
import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/domain/features/clients/repositories/clients_repository.dart';
import 'package:clients/infrastructure/dtos/dtos.exports.dart';
import 'package:flutter/material.dart';

class ClientsController extends ControllerFactory<Clients, ClientsDto> {
  ClientsController({
    @required Clients clients,
    @required ClientsRepository clientsRepository,
  }) : super(repository: clientsRepository, entityFactory: clients);
}
