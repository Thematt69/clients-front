import 'package:clients/domain/auth/value_objects/auth_value_failure.dart';
import 'package:dartz/dartz.dart';

import '../../core/value_objects/value_failure.dart';

// EMAIL -----------------------------------------------------------------------
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
        ValueFailure.auth(AuthValueFailure.invalidEmail(failedValue: input)));
  }
}

// PASSWORD --------------------------------------------------------------------
Either<ValueFailure<String>, String> validateMinStringLength(
  String input,
  int minLength,
) {
  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.auth(AuthValueFailure.passwordToShort(
          failedValue: input, minLength: minLength)),
    );
  }
}

Either<ValueFailure<String>, String> validateUpperCase(
  String input,
) {
  if (input.contains(new RegExp(r'[A-Z]'))) {
    return right(input);
  } else {
    return left(
      ValueFailure.auth(
          AuthValueFailure.passwordMissingUpperCase(failedValue: input)),
    );
  }
}

Either<ValueFailure<String>, String> validateLowerCase(
  String input,
) {
  if (input.contains(new RegExp(r'[a-z]'))) {
    return right(input);
  } else {
    return left(
      ValueFailure.auth(
          AuthValueFailure.passwordMissingLowerCase(failedValue: input)),
    );
  }
}
