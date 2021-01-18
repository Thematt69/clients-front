import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_value_failure.freezed.dart';

@freezed
abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({
    @required String failedValue,
  }) = InvalidEmail<T>;
  const factory AuthValueFailure.passwordToShort({
    @required String failedValue,
    @required int minLength,
  }) = PasswordToShort<T>;
  const factory AuthValueFailure.passwordMissingUpperCase({
    @required String failedValue,
  }) = PasswordMissingUpperCase<T>;
  const factory AuthValueFailure.passwordMissingLowerCase({
    @required String failedValue,
  }) = PasswordMissingLowerCase<T>;
  const factory AuthValueFailure.passwordMissingNumber({
    @required String failedValue,
  }) = PasswordMissingNumber<T>;
}
