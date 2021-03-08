import 'package:clients/domain/features/entities.exports.dart';
import 'package:clients/domain/features/clients/repositories/clients_repository.dart';
import 'package:clients/infrastructure/api/rest_api_response.dart';
import 'package:flutter/material.dart';

class ClientsController {
  final ClientsRepository clientsRepository;
  ClientsController({
    @required this.clientsRepository,
  });

  Future<RestApiResponse<List<Client>>> index({
    Map<String, dynamic> queryParameters,
  }) async {
    var result = await clientsRepository.index(
      queryParameters: queryParameters,
    );

    return RestApiResponse<List<Client>>(
      data: result.data.toEntity,
    );
  }

  Future<RestApiResponse<List<Client>>> show({
    @required dynamic value,
    Map<String, dynamic> queryParameters,
  }) async {
    var result = await clientsRepository.show(
      value: value,
      queryParameters: queryParameters,
    );

    return RestApiResponse<List<Client>>(
      data: result.data.toEntity,
    );
  }
}
