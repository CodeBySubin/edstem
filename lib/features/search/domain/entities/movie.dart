import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String title,
    required String year,
    required String imdbID,
    required String type,
    required String poster,
  }) = _Movie;
}
