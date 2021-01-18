import 'package:freezed_annotation/freezed_annotation.dart';

part 'env_type.freezed.dart';

@freezed
abstract class EnvType with _$EnvType {
  const factory EnvType.dev() = Dev;
  const factory EnvType.rc() = Rc;
  const factory EnvType.rd() = Rd;
  const factory EnvType.prod() = Prod;
}
