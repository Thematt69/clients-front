import 'package:clients/domain/auth/value_objects/auth_value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
}
