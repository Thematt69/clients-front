import 'package:clients/domain/core/value_objects/value_failure.dart';
import 'package:clients/domain/core/value_objects/value_object.dart';
import 'package:dartz/dartz.dart';

import 'auth_value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}
