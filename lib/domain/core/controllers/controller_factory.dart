import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/domain/core/entities/entity_factory.dart';
import 'package:clients/infrastructure/api/rest_api_response.dart';
import 'package:clients/infrastructure/repositories/repositories.exports.dart';
import 'package:flutter/foundation.dart';

abstract class ControllerFactory<E, D> {
  final EntityFactory<E, D> entityFactory;
  final RestApiRepositoryFactory<D> repository;

  ControllerFactory({
    @required this.entityFactory,
    @required this.repository,
  });

  Future<RestApiResponse<List<E>>> index({
    Map<String, dynamic> queryParameters,
  }) async {
    var result = await repository.index(
      queryParameters: queryParameters,
    );

    var response = RestApiResponse<List<E>>(
      data: result.data.map<E>((e) => entityFactory.fromDto(e)).toList(),
    );

    return response;
  }
}
