import 'package:clients/domain/core/value_objects/value_failure.dart';
import 'package:clients/domain/core/value_objects/value_object.dart';
import 'package:dartz/dartz.dart';

import 'auth_value_validators.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input, int minLength) {
    assert(input != null);
    return Password._(
      validateMinStringLength(input, minLength)
          .flatMap(validateLowerCase)
          .flatMap(validateUpperCase),
    );
  }

  const Password._(this.value);
}
