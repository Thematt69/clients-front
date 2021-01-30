import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_state.freezed.dart';

@freezed
abstract class ApiState with _$ApiState {
  const factory ApiState.initial() = Initial;
  const factory ApiState.connecting() = Connecting;
  const factory ApiState.connected() = Connected;
  const factory ApiState.error() = Error;
}
