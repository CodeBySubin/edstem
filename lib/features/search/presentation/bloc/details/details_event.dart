
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_event.freezed.dart';

@freezed
class MovieDetailEvent with _$MovieDetailEvent {
  const factory MovieDetailEvent.loadMovieDetail(String imdbId) = LoadMovieDetail;
}
