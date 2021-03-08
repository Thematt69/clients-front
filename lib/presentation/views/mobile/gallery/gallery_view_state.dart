import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_view_state.freezed.dart';

@freezed
abstract class GalleryViewState with _$GalleryViewState {
  const factory GalleryViewState.initial() = Initial;
  const factory GalleryViewState.loading() = Loading;
  const factory GalleryViewState.success() = Success;
  const factory GalleryViewState.error() = Error;
}
