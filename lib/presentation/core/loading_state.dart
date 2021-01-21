import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_state.freezed.dart';

@freezed
abstract class LoadingState with _$LoadingState {
  const factory LoadingState.initial({String message}) = Initial;
  const factory LoadingState.loading({String message}) = Loading;
  const factory LoadingState.loaded({String message}) = Loaded;
  const factory LoadingState.error({String message}) = Error;
}
