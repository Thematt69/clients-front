import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial({String message}) = Initial;
  const factory HomeState.loading({String message}) = Loading;
  const factory HomeState.loaded({String message}) = Loaded;
  const factory HomeState.error({String message}) = Error;
}
