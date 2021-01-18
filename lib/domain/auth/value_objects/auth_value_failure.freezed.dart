// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthValueFailureTearOff {
  const _$AuthValueFailureTearOff();

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  PasswordToShort<T> passwordToShort<T>(
      {@required String failedValue, @required int minLength}) {
    return PasswordToShort<T>(
      failedValue: failedValue,
      minLength: minLength,
    );
  }

// ignore: unused_element
  PasswordMissingUpperCase<T> passwordMissingUpperCase<T>(
      {@required String failedValue}) {
    return PasswordMissingUpperCase<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  PasswordMissingLowerCase<T> passwordMissingLowerCase<T>(
      {@required String failedValue}) {
    return PasswordMissingLowerCase<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  PasswordMissingNumber<T> passwordMissingNumber<T>(
      {@required String failedValue}) {
    return PasswordMissingNumber<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthValueFailure = _$AuthValueFailureTearOff();

/// @nodoc
mixin _$AuthValueFailure<T> {
  String get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String failedValue),
    @required TResult passwordToShort(String failedValue, int minLength),
    @required TResult passwordMissingUpperCase(String failedValue),
    @required TResult passwordMissingLowerCase(String failedValue),
    @required TResult passwordMissingNumber(String failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String failedValue),
    TResult passwordToShort(String failedValue, int minLength),
    TResult passwordMissingUpperCase(String failedValue),
    TResult passwordMissingLowerCase(String failedValue),
    TResult passwordMissingNumber(String failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult passwordToShort(PasswordToShort<T> value),
    @required
        TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    @required
        TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    @required TResult passwordMissingNumber(PasswordMissingNumber<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult passwordToShort(PasswordToShort<T> value),
    TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    TResult passwordMissingNumber(PasswordMissingNumber<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $AuthValueFailureCopyWith<T, AuthValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $AuthValueFailureCopyWith<T, $Res> {
  factory $AuthValueFailureCopyWith(
          AuthValueFailure<T> value, $Res Function(AuthValueFailure<T>) then) =
      _$AuthValueFailureCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  _$AuthValueFailureCopyWithImpl(this._value, this._then);

  final AuthValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(AuthValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String failedValue),
    @required TResult passwordToShort(String failedValue, int minLength),
    @required TResult passwordMissingUpperCase(String failedValue),
    @required TResult passwordMissingLowerCase(String failedValue),
    @required TResult passwordMissingNumber(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(passwordToShort != null);
    assert(passwordMissingUpperCase != null);
    assert(passwordMissingLowerCase != null);
    assert(passwordMissingNumber != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String failedValue),
    TResult passwordToShort(String failedValue, int minLength),
    TResult passwordMissingUpperCase(String failedValue),
    TResult passwordMissingLowerCase(String failedValue),
    TResult passwordMissingNumber(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult passwordToShort(PasswordToShort<T> value),
    @required
        TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    @required
        TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    @required TResult passwordMissingNumber(PasswordMissingNumber<T> value),
  }) {
    assert(invalidEmail != null);
    assert(passwordToShort != null);
    assert(passwordMissingUpperCase != null);
    assert(passwordMissingLowerCase != null);
    assert(passwordMissingNumber != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult passwordToShort(PasswordToShort<T> value),
    TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    TResult passwordMissingNumber(PasswordMissingNumber<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements AuthValueFailure<T> {
  const factory InvalidEmail({@required String failedValue}) =
      _$InvalidEmail<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $PasswordToShortCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $PasswordToShortCopyWith(
          PasswordToShort<T> value, $Res Function(PasswordToShort<T>) then) =
      _$PasswordToShortCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue, int minLength});
}

/// @nodoc
class _$PasswordToShortCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $PasswordToShortCopyWith<T, $Res> {
  _$PasswordToShortCopyWithImpl(
      PasswordToShort<T> _value, $Res Function(PasswordToShort<T>) _then)
      : super(_value, (v) => _then(v as PasswordToShort<T>));

  @override
  PasswordToShort<T> get _value => super._value as PasswordToShort<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object minLength = freezed,
  }) {
    return _then(PasswordToShort<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
      minLength: minLength == freezed ? _value.minLength : minLength as int,
    ));
  }
}

/// @nodoc
class _$PasswordToShort<T>
    with DiagnosticableTreeMixin
    implements PasswordToShort<T> {
  const _$PasswordToShort(
      {@required this.failedValue, @required this.minLength})
      : assert(failedValue != null),
        assert(minLength != null);

  @override
  final String failedValue;
  @override
  final int minLength;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthValueFailure<$T>.passwordToShort(failedValue: $failedValue, minLength: $minLength)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthValueFailure<$T>.passwordToShort'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('minLength', minLength));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordToShort<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.minLength, minLength) ||
                const DeepCollectionEquality()
                    .equals(other.minLength, minLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(minLength);

  @JsonKey(ignore: true)
  @override
  $PasswordToShortCopyWith<T, PasswordToShort<T>> get copyWith =>
      _$PasswordToShortCopyWithImpl<T, PasswordToShort<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String failedValue),
    @required TResult passwordToShort(String failedValue, int minLength),
    @required TResult passwordMissingUpperCase(String failedValue),
    @required TResult passwordMissingLowerCase(String failedValue),
    @required TResult passwordMissingNumber(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(passwordToShort != null);
    assert(passwordMissingUpperCase != null);
    assert(passwordMissingLowerCase != null);
    assert(passwordMissingNumber != null);
    return passwordToShort(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String failedValue),
    TResult passwordToShort(String failedValue, int minLength),
    TResult passwordMissingUpperCase(String failedValue),
    TResult passwordMissingLowerCase(String failedValue),
    TResult passwordMissingNumber(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordToShort != null) {
      return passwordToShort(failedValue, minLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult passwordToShort(PasswordToShort<T> value),
    @required
        TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    @required
        TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    @required TResult passwordMissingNumber(PasswordMissingNumber<T> value),
  }) {
    assert(invalidEmail != null);
    assert(passwordToShort != null);
    assert(passwordMissingUpperCase != null);
    assert(passwordMissingLowerCase != null);
    assert(passwordMissingNumber != null);
    return passwordToShort(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult passwordToShort(PasswordToShort<T> value),
    TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    TResult passwordMissingNumber(PasswordMissingNumber<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordToShort != null) {
      return passwordToShort(this);
    }
    return orElse();
  }
}

abstract class PasswordToShort<T> implements AuthValueFailure<T> {
  const factory PasswordToShort(
      {@required String failedValue,
      @required int minLength}) = _$PasswordToShort<T>;

  @override
  String get failedValue;
  int get minLength;
  @override
  @JsonKey(ignore: true)
  $PasswordToShortCopyWith<T, PasswordToShort<T>> get copyWith;
}

/// @nodoc
abstract class $PasswordMissingUpperCaseCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $PasswordMissingUpperCaseCopyWith(PasswordMissingUpperCase<T> value,
          $Res Function(PasswordMissingUpperCase<T>) then) =
      _$PasswordMissingUpperCaseCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$PasswordMissingUpperCaseCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $PasswordMissingUpperCaseCopyWith<T, $Res> {
  _$PasswordMissingUpperCaseCopyWithImpl(PasswordMissingUpperCase<T> _value,
      $Res Function(PasswordMissingUpperCase<T>) _then)
      : super(_value, (v) => _then(v as PasswordMissingUpperCase<T>));

  @override
  PasswordMissingUpperCase<T> get _value =>
      super._value as PasswordMissingUpperCase<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(PasswordMissingUpperCase<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$PasswordMissingUpperCase<T>
    with DiagnosticableTreeMixin
    implements PasswordMissingUpperCase<T> {
  const _$PasswordMissingUpperCase({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthValueFailure<$T>.passwordMissingUpperCase(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthValueFailure<$T>.passwordMissingUpperCase'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordMissingUpperCase<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $PasswordMissingUpperCaseCopyWith<T, PasswordMissingUpperCase<T>>
      get copyWith => _$PasswordMissingUpperCaseCopyWithImpl<T,
          PasswordMissingUpperCase<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String failedValue),
    @required TResult passwordToShort(String failedValue, int minLength),
    @required TResult passwordMissingUpperCase(String failedValue),
    @required TResult passwordMissingLowerCase(String failedValue),
    @required TResult passwordMissingNumber(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(passwordToShort != null);
    assert(passwordMissingUpperCase != null);
    assert(passwordMissingLowerCase != null);
    assert(passwordMissingNumber != null);
    return passwordMissingUpperCase(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String failedValue),
    TResult passwordToShort(String failedValue, int minLength),
    TResult passwordMissingUpperCase(String failedValue),
    TResult passwordMissingLowerCase(String failedValue),
    TResult passwordMissingNumber(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordMissingUpperCase != null) {
      return passwordMissingUpperCase(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult passwordToShort(PasswordToShort<T> value),
    @required
        TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    @required
        TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    @required TResult passwordMissingNumber(PasswordMissingNumber<T> value),
  }) {
    assert(invalidEmail != null);
    assert(passwordToShort != null);
    assert(passwordMissingUpperCase != null);
    assert(passwordMissingLowerCase != null);
    assert(passwordMissingNumber != null);
    return passwordMissingUpperCase(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult passwordToShort(PasswordToShort<T> value),
    TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    TResult passwordMissingNumber(PasswordMissingNumber<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordMissingUpperCase != null) {
      return passwordMissingUpperCase(this);
    }
    return orElse();
  }
}

abstract class PasswordMissingUpperCase<T> implements AuthValueFailure<T> {
  const factory PasswordMissingUpperCase({@required String failedValue}) =
      _$PasswordMissingUpperCase<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $PasswordMissingUpperCaseCopyWith<T, PasswordMissingUpperCase<T>>
      get copyWith;
}

/// @nodoc
abstract class $PasswordMissingLowerCaseCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $PasswordMissingLowerCaseCopyWith(PasswordMissingLowerCase<T> value,
          $Res Function(PasswordMissingLowerCase<T>) then) =
      _$PasswordMissingLowerCaseCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$PasswordMissingLowerCaseCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $PasswordMissingLowerCaseCopyWith<T, $Res> {
  _$PasswordMissingLowerCaseCopyWithImpl(PasswordMissingLowerCase<T> _value,
      $Res Function(PasswordMissingLowerCase<T>) _then)
      : super(_value, (v) => _then(v as PasswordMissingLowerCase<T>));

  @override
  PasswordMissingLowerCase<T> get _value =>
      super._value as PasswordMissingLowerCase<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(PasswordMissingLowerCase<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$PasswordMissingLowerCase<T>
    with DiagnosticableTreeMixin
    implements PasswordMissingLowerCase<T> {
  const _$PasswordMissingLowerCase({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthValueFailure<$T>.passwordMissingLowerCase(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthValueFailure<$T>.passwordMissingLowerCase'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordMissingLowerCase<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $PasswordMissingLowerCaseCopyWith<T, PasswordMissingLowerCase<T>>
      get copyWith => _$PasswordMissingLowerCaseCopyWithImpl<T,
          PasswordMissingLowerCase<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String failedValue),
    @required TResult passwordToShort(String failedValue, int minLength),
    @required TResult passwordMissingUpperCase(String failedValue),
    @required TResult passwordMissingLowerCase(String failedValue),
    @required TResult passwordMissingNumber(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(passwordToShort != null);
    assert(passwordMissingUpperCase != null);
    assert(passwordMissingLowerCase != null);
    assert(passwordMissingNumber != null);
    return passwordMissingLowerCase(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String failedValue),
    TResult passwordToShort(String failedValue, int minLength),
    TResult passwordMissingUpperCase(String failedValue),
    TResult passwordMissingLowerCase(String failedValue),
    TResult passwordMissingNumber(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordMissingLowerCase != null) {
      return passwordMissingLowerCase(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult passwordToShort(PasswordToShort<T> value),
    @required
        TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    @required
        TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    @required TResult passwordMissingNumber(PasswordMissingNumber<T> value),
  }) {
    assert(invalidEmail != null);
    assert(passwordToShort != null);
    assert(passwordMissingUpperCase != null);
    assert(passwordMissingLowerCase != null);
    assert(passwordMissingNumber != null);
    return passwordMissingLowerCase(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult passwordToShort(PasswordToShort<T> value),
    TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    TResult passwordMissingNumber(PasswordMissingNumber<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordMissingLowerCase != null) {
      return passwordMissingLowerCase(this);
    }
    return orElse();
  }
}

abstract class PasswordMissingLowerCase<T> implements AuthValueFailure<T> {
  const factory PasswordMissingLowerCase({@required String failedValue}) =
      _$PasswordMissingLowerCase<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $PasswordMissingLowerCaseCopyWith<T, PasswordMissingLowerCase<T>>
      get copyWith;
}

/// @nodoc
abstract class $PasswordMissingNumberCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $PasswordMissingNumberCopyWith(PasswordMissingNumber<T> value,
          $Res Function(PasswordMissingNumber<T>) then) =
      _$PasswordMissingNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$PasswordMissingNumberCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $PasswordMissingNumberCopyWith<T, $Res> {
  _$PasswordMissingNumberCopyWithImpl(PasswordMissingNumber<T> _value,
      $Res Function(PasswordMissingNumber<T>) _then)
      : super(_value, (v) => _then(v as PasswordMissingNumber<T>));

  @override
  PasswordMissingNumber<T> get _value =>
      super._value as PasswordMissingNumber<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(PasswordMissingNumber<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$PasswordMissingNumber<T>
    with DiagnosticableTreeMixin
    implements PasswordMissingNumber<T> {
  const _$PasswordMissingNumber({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthValueFailure<$T>.passwordMissingNumber(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthValueFailure<$T>.passwordMissingNumber'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordMissingNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $PasswordMissingNumberCopyWith<T, PasswordMissingNumber<T>> get copyWith =>
      _$PasswordMissingNumberCopyWithImpl<T, PasswordMissingNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String failedValue),
    @required TResult passwordToShort(String failedValue, int minLength),
    @required TResult passwordMissingUpperCase(String failedValue),
    @required TResult passwordMissingLowerCase(String failedValue),
    @required TResult passwordMissingNumber(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(passwordToShort != null);
    assert(passwordMissingUpperCase != null);
    assert(passwordMissingLowerCase != null);
    assert(passwordMissingNumber != null);
    return passwordMissingNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String failedValue),
    TResult passwordToShort(String failedValue, int minLength),
    TResult passwordMissingUpperCase(String failedValue),
    TResult passwordMissingLowerCase(String failedValue),
    TResult passwordMissingNumber(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordMissingNumber != null) {
      return passwordMissingNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult passwordToShort(PasswordToShort<T> value),
    @required
        TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    @required
        TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    @required TResult passwordMissingNumber(PasswordMissingNumber<T> value),
  }) {
    assert(invalidEmail != null);
    assert(passwordToShort != null);
    assert(passwordMissingUpperCase != null);
    assert(passwordMissingLowerCase != null);
    assert(passwordMissingNumber != null);
    return passwordMissingNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult passwordToShort(PasswordToShort<T> value),
    TResult passwordMissingUpperCase(PasswordMissingUpperCase<T> value),
    TResult passwordMissingLowerCase(PasswordMissingLowerCase<T> value),
    TResult passwordMissingNumber(PasswordMissingNumber<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordMissingNumber != null) {
      return passwordMissingNumber(this);
    }
    return orElse();
  }
}

abstract class PasswordMissingNumber<T> implements AuthValueFailure<T> {
  const factory PasswordMissingNumber({@required String failedValue}) =
      _$PasswordMissingNumber<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $PasswordMissingNumberCopyWith<T, PasswordMissingNumber<T>> get copyWith;
}
