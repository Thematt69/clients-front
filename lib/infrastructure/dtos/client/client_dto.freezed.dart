// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'client_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ClientDto _$ClientDtoFromJson(Map<String, dynamic> json) {
  return _ClientDto.fromJson(json);
}

/// @nodoc
class _$ClientDtoTearOff {
  const _$ClientDtoTearOff();

// ignore: unused_element
  _ClientDto call(
      {@JsonKey(name: 'guid') String guid,
      @JsonKey(name: 'first') String first,
      @JsonKey(name: 'last') String last,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'zip') int zip}) {
    return _ClientDto(
      guid: guid,
      first: first,
      last: last,
      street: street,
      city: city,
      zip: zip,
    );
  }

// ignore: unused_element
  ClientDto fromJson(Map<String, Object> json) {
    return ClientDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ClientDto = _$ClientDtoTearOff();

/// @nodoc
mixin _$ClientDto {
  @JsonKey(name: 'guid')
  String get guid;
  @JsonKey(name: 'first')
  String get first;
  @JsonKey(name: 'last')
  String get last;
  @JsonKey(name: 'street')
  String get street;
  @JsonKey(name: 'city')
  String get city;
  @JsonKey(name: 'zip')
  int get zip;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ClientDtoCopyWith<ClientDto> get copyWith;
}

/// @nodoc
abstract class $ClientDtoCopyWith<$Res> {
  factory $ClientDtoCopyWith(ClientDto value, $Res Function(ClientDto) then) =
      _$ClientDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'guid') String guid,
      @JsonKey(name: 'first') String first,
      @JsonKey(name: 'last') String last,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'zip') int zip});
}

/// @nodoc
class _$ClientDtoCopyWithImpl<$Res> implements $ClientDtoCopyWith<$Res> {
  _$ClientDtoCopyWithImpl(this._value, this._then);

  final ClientDto _value;
  // ignore: unused_field
  final $Res Function(ClientDto) _then;

  @override
  $Res call({
    Object guid = freezed,
    Object first = freezed,
    Object last = freezed,
    Object street = freezed,
    Object city = freezed,
    Object zip = freezed,
  }) {
    return _then(_value.copyWith(
      guid: guid == freezed ? _value.guid : guid as String,
      first: first == freezed ? _value.first : first as String,
      last: last == freezed ? _value.last : last as String,
      street: street == freezed ? _value.street : street as String,
      city: city == freezed ? _value.city : city as String,
      zip: zip == freezed ? _value.zip : zip as int,
    ));
  }
}

/// @nodoc
abstract class _$ClientDtoCopyWith<$Res> implements $ClientDtoCopyWith<$Res> {
  factory _$ClientDtoCopyWith(
          _ClientDto value, $Res Function(_ClientDto) then) =
      __$ClientDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'guid') String guid,
      @JsonKey(name: 'first') String first,
      @JsonKey(name: 'last') String last,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'zip') int zip});
}

/// @nodoc
class __$ClientDtoCopyWithImpl<$Res> extends _$ClientDtoCopyWithImpl<$Res>
    implements _$ClientDtoCopyWith<$Res> {
  __$ClientDtoCopyWithImpl(_ClientDto _value, $Res Function(_ClientDto) _then)
      : super(_value, (v) => _then(v as _ClientDto));

  @override
  _ClientDto get _value => super._value as _ClientDto;

  @override
  $Res call({
    Object guid = freezed,
    Object first = freezed,
    Object last = freezed,
    Object street = freezed,
    Object city = freezed,
    Object zip = freezed,
  }) {
    return _then(_ClientDto(
      guid: guid == freezed ? _value.guid : guid as String,
      first: first == freezed ? _value.first : first as String,
      last: last == freezed ? _value.last : last as String,
      street: street == freezed ? _value.street : street as String,
      city: city == freezed ? _value.city : city as String,
      zip: zip == freezed ? _value.zip : zip as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ClientDto implements _ClientDto {
  const _$_ClientDto(
      {@JsonKey(name: 'guid') this.guid,
      @JsonKey(name: 'first') this.first,
      @JsonKey(name: 'last') this.last,
      @JsonKey(name: 'street') this.street,
      @JsonKey(name: 'city') this.city,
      @JsonKey(name: 'zip') this.zip});

  factory _$_ClientDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ClientDtoFromJson(json);

  @override
  @JsonKey(name: 'guid')
  final String guid;
  @override
  @JsonKey(name: 'first')
  final String first;
  @override
  @JsonKey(name: 'last')
  final String last;
  @override
  @JsonKey(name: 'street')
  final String street;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'zip')
  final int zip;

  @override
  String toString() {
    return 'ClientDto(guid: $guid, first: $first, last: $last, street: $street, city: $city, zip: $zip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClientDto &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.first, first) ||
                const DeepCollectionEquality().equals(other.first, first)) &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(first) ^
      const DeepCollectionEquality().hash(last) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(zip);

  @JsonKey(ignore: true)
  @override
  _$ClientDtoCopyWith<_ClientDto> get copyWith =>
      __$ClientDtoCopyWithImpl<_ClientDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ClientDtoToJson(this);
  }
}

abstract class _ClientDto implements ClientDto {
  const factory _ClientDto(
      {@JsonKey(name: 'guid') String guid,
      @JsonKey(name: 'first') String first,
      @JsonKey(name: 'last') String last,
      @JsonKey(name: 'street') String street,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'zip') int zip}) = _$_ClientDto;

  factory _ClientDto.fromJson(Map<String, dynamic> json) =
      _$_ClientDto.fromJson;

  @override
  @JsonKey(name: 'guid')
  String get guid;
  @override
  @JsonKey(name: 'first')
  String get first;
  @override
  @JsonKey(name: 'last')
  String get last;
  @override
  @JsonKey(name: 'street')
  String get street;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'zip')
  int get zip;
  @override
  @JsonKey(ignore: true)
  _$ClientDtoCopyWith<_ClientDto> get copyWith;
}
