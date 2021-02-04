import 'package:freezed_annotation/freezed_annotation.dart';

part 'ip_adress_view_state.freezed.dart';

@freezed
abstract class IpAdressViewState with _$IpAdressViewState {
  const factory IpAdressViewState.initial() = Initial;
  const factory IpAdressViewState.loading() = Loading;
  const factory IpAdressViewState.loaded() = Loaded;
  const factory IpAdressViewState.testing() = Testing;
  const factory IpAdressViewState.testSuccess() = TestSuccess;
  const factory IpAdressViewState.testError() = TestError;
}
