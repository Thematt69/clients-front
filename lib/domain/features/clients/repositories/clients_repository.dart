import 'package:clients/infrastructure/api/rest_api_response.dart';
import 'package:clients/infrastructure/dtos/dtos.exports.dart';
import 'package:flutter/material.dart';

abstract class ClientsRepository {
  Future<RestApiResponse<List<ClientDto>>> index({
    Map<String, dynamic> queryParameters,
  });
  Future<RestApiResponse<List<ClientDto>>> show({
    @required dynamic value,
    Map<String, dynamic> queryParameters,
  });
}
