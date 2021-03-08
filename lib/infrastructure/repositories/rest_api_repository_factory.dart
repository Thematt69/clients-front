import 'package:clients/infrastructure/repositories/repositories.exports.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class RestApiRepositoryFactory<D> extends RestApiRepository {
  RestApiRepositoryFactory({
    @required Dio client,
    @required String controller,
  }) : super(
          client: client,
          controller: controller,
        );
}
