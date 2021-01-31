import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';

@freezed
abstract class SettingState with _$SettingState {
  const factory SettingState.initial() = Initial;
  const factory SettingState.loading() = Loading;
  const factory SettingState.loaded() = Loaded;
  const factory SettingState.error() = Error;
  const factory SettingState.testing() = Testing;
  const factory SettingState.testSuccess() = TestSuccess;
  const factory SettingState.testError() = TestError;
}
