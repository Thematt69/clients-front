import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class RestApiRepository {
  final Dio client;
  @protected
  final String _controller;

  String get controller => _controller;

  RestApiRepository({
    this.client,
    String controller,
  }) : _controller = controller;
}
