import 'package:edstem/features/search/domain/entities/details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'details_state.freezed.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState.initial() = MovieDetailInitial;
  const factory MovieDetailState.loading() = MovieDetailLoading;
  const factory MovieDetailState.loaded(MovieDetail detail) = MovieDetailLoaded;
  const factory MovieDetailState.error(String message) = MovieDetailError;
}
