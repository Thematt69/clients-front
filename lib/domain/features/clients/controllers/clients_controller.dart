import 'package:clients/domain/features/clients/repositories/clients_repository.dart';

class ClientsController {
  final ClientsRepository _clientsRepository;

  ClientsController({
    ClientsRepository clientsRepository,
  }) : _clientsRepository = clientsRepository;
}
