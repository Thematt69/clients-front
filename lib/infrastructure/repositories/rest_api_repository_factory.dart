import 'package:clients/infrastructure/api/rest_api_response.dart';
import 'package:clients/infrastructure/dtos/dtos.exports.dart';
import 'package:clients/infrastructure/repositories/repositories.exports.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class RestApiRepositoryFactory<D> extends RestApiRepository {
  final DtoFactory<D> dtoFactory;
  RestApiRepositoryFactory({
    @required Dio client,
    @required String controller,
    @required this.dtoFactory,
  }) : super(client: client, controller: controller);

  Future<RestApiResponse<List<D>>> index({
    Map<String, dynamic> queryParameters,
  }) async {
    var response = await client.get(
      '$controller',
      queryParameters: queryParameters,
    );

    return RestApiResponse<List<D>>(
      data: response.data.map<D>(
        (e) {
          return dtoFactory.fromJson(e);
        },
      ).toList(),
    );
  }

  Future<RestApiResponse<List<D>>> show({
    @required dynamic value,
    Map<String, dynamic> queryParameters,
  }) async {
    var response = await client.get(
      '$controller/$value',
      queryParameters: queryParameters,
    );

    return RestApiResponse<List<D>>(
      data: response.data.map<D>(
        (e) {
          return dtoFactory.fromJson(e);
        },
      ).toList(),
    );
  }
}
