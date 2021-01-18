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

  Future<RestApiResponse<List<D>>> getAll({
    Map<String, dynamic> queryParameters,
  }) async {
    var response = await client.get(
      '$controller',
      queryParameters: queryParameters,
    );

    // print(response);

    return RestApiResponse<List<D>>(
      message: response.data['message'],
      data: response.data['data'].map<D>((e) {
        return dtoFactory.fromJson(e);
      }).toList(),
    );
  }

  Future<RestApiResponse<D>> create(
    D dto, {
    Map<String, dynamic> queryParameters,
  }) async {
    var response = await client.post(
      '$controller',
      data: dtoFactory.toJson(dto),
      queryParameters: queryParameters,
    );

    return RestApiResponse<D>(
      message: response.data['message'],
      data: dtoFactory.fromJson(response.data['data']),
    );
  }

  Future<RestApiResponse<D>> update(
    D dto,
    int id, {
    Map<String, dynamic> queryParameters,
  }) async {
    var response = await client.put(
      '$controller/$id',
      data: dtoFactory.toJson(dto),
      queryParameters: queryParameters,
    );

    return RestApiResponse<D>(
      message: response.data['message'],
      data: dtoFactory.fromJson(response.data['data']),
    );
  }

  Future<String> delete(
    int id, {
    Map<String, dynamic> queryParameters,
  }) async {
    var response = await client.delete(
      '$controller/$id',
      queryParameters: queryParameters,
    );

    return response.data['message'];
  }
}
