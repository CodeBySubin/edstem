import 'package:freezed_annotation/freezed_annotation.dart';

part 'details.freezed.dart';


@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    required String title,
    required String year,
    required String rated,
    required String released,
    required String runtime,
    required String genre,
    required String director,
    required String writer,
    required String actors,
    required String plot,
    required String language,
    required String country,
    required String awards,
    required String poster,
    required List<Rating> ratings,
    required String metascore,
    required String imdbRating,
    required String imdbVotes,
    required String imdbID,
    required String type,
    required String dvd,
    required String boxOffice,
    required String production,
    required String website,
  }) = _MovieDetail;
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    required String source,
    required String value,
  }) = _Rating;
}