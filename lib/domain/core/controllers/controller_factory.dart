import 'package:clients/domain/core/entities/entities.exports.dart';
import 'package:clients/domain/core/entities/entity_factory.dart';
import 'package:clients/domain/core/entities/filterable_entity_factory.dart';
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

  Future<RestApiResponse<List<E>>> getAll({
    Map<String, dynamic> queryParameters,
  }) async {
    var result = await repository.getAll(
      queryParameters: queryParameters,
    );

    var response = RestApiResponse<List<E>>(
      message: result.message,
      data: result.data.map<E>((e) => entityFactory.fromDto(e)).toList(),
    );

    return response;
  }

  Future<RestApiResponse<E>> create(
    E entity, {
    Map<String, dynamic> queryParameters,
  }) async {
    var result = await repository.create(
      entityFactory.toDto(entity),
      queryParameters: queryParameters,
    );

    var response = RestApiResponse<E>(
      message: result.message,
      data: entityFactory.fromDto(result.data),
    );

    return response;
  }

  Future<RestApiResponse<E>> update(
    E entity,
    int id, {
    Map<String, dynamic> queryParameters,
  }) async {
    var result = await repository.update(
      entityFactory.toDto(entity),
      id,
      queryParameters: queryParameters,
    );

    var response = RestApiResponse<E>(
      message: result.message,
      data: entityFactory.fromDto(result.data),
    );

    return response;
  }

  Future<String> delete(
    int id, {
    Map<String, dynamic> queryParameters,
  }) async {
    var message = await repository.delete(
      id,
      queryParameters: queryParameters,
    );

    return message;
  }

  /// Filter a list of FilterableEntities
  List<E> filterList(List<E> baseList, E filterEntity) {
    if (baseList == null || filterEntity == null) {
      return baseList;
    }
    return baseList
        .where(
          (e) => (e as FilterableEntity).inFilter(filterEntity),
        )
        .toList();
  }
}
