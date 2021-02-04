import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_view_state.freezed.dart';

@freezed
abstract class HomeViewState with _$HomeViewState {
  const factory HomeViewState.initial() = Initial;
  const factory HomeViewState.loading() = Loading;
  const factory HomeViewState.loaded() = Loaded;
  const factory HomeViewState.error() = Error;
}
