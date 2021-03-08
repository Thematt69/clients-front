import 'package:clients/domain/features/clients/repositories/clients_repository.dart';
import 'package:clients/infrastructure/api/rest_api_client.dart';
import 'package:clients/infrastructure/api/rest_api_response.dart';
import 'package:clients/infrastructure/dtos/dtos.exports.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import 'rest_api_repository_factory.dart';

class ClientsRepositoryImp extends RestApiRepositoryFactory<ClientDto>
    implements ClientsRepository {
  ClientsRepositoryImp({
    Dio client,
  }) : super(
          client: client ?? Get.find<RestApiClient>().client,
          controller: "/client",
        );

  Future<RestApiResponse<List<ClientDto>>> index({
    Map<String, dynamic> queryParameters,
  }) async {
    var response = await client.get(
      '$controller',
      queryParameters: queryParameters,
    );

    return RestApiResponse<List<ClientDto>>(
      data: response.data.map<ClientDto>((e) => ClientDto.fromJson(e)).toList(),
    );
  }

  Future<RestApiResponse<List<ClientDto>>> show({
    @required dynamic value,
    Map<String, dynamic> queryParameters,
  }) async {
    var response = await client.get(
      '$controller/$value',
      queryParameters: queryParameters,
    );

    return RestApiResponse<List<ClientDto>>(
      data: response.data.map<ClientDto>((e) => ClientDto.fromJson(e)).toList(),
    );
  }
}
