import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/details.dart';

part 'details_model.freezed.dart';
part 'details_model.g.dart';

@freezed
class MovieDetailModel with _$MovieDetailModel {
  const factory MovieDetailModel({
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'Year') String? year,
    @JsonKey(name: 'Rated') String? rated,
    @JsonKey(name: 'Released') String? released,
    @JsonKey(name: 'Runtime') String? runtime,
    @JsonKey(name: 'Genre') String? genre,
    @JsonKey(name: 'Director') String? director,
    @JsonKey(name: 'Writer') String? writer,
    @JsonKey(name: 'Actors') String? actors,
    @JsonKey(name: 'Plot') String? plot,
    @JsonKey(name: 'Language') String? language,
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'Awards') String? awards,
    @JsonKey(name: 'Poster') String? poster,
    @JsonKey(name: 'Ratings') List<RatingModel>? ratings,
    @JsonKey(name: 'Metascore') String? metascore,
    @JsonKey(name: 'imdbRating') String? imdbRating,
    @JsonKey(name: 'imdbVotes') String? imdbVotes,
    @JsonKey(name: 'imdbID') String? imdbID,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'DVD') String? dvd,
    @JsonKey(name: 'BoxOffice') String? boxOffice,
    @JsonKey(name: 'Production') String? production,
    @JsonKey(name: 'Website') String? website,
  }) = _MovieDetailModel;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);
}

@freezed
class RatingModel with _$RatingModel {
  const factory RatingModel({
    @JsonKey(name: 'Source') String? source,
    @JsonKey(name: 'Value') String? value,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}


extension MovieDetailModelX on MovieDetailModel {
  MovieDetail toEntity() {
    return MovieDetail(
      title: title ?? '',
      year: year ?? '',
      rated: rated ?? '',
      released: released ?? '',
      runtime: runtime ?? '',
      genre: genre ?? '',
      director: director ?? '',
      writer: writer ?? '',
      actors: actors ?? '',
      plot: plot ?? '',
      language: language ?? '',
      country: country ?? '',
      awards: awards ?? '',
      poster: poster ?? '',
      ratings: (ratings ?? []).map((rating) => rating.toEntity()).toList(),
      metascore: metascore ?? '',
      imdbRating: imdbRating ?? '',
      imdbVotes: imdbVotes ?? '',
      imdbID: imdbID ?? '',
      type: type ?? '',
      dvd: dvd ?? '',
      boxOffice: boxOffice ?? '',
      production: production ?? '',
      website: website ?? '',
    );
  }
}

extension RatingModelX on RatingModel {
  Rating toEntity() {
    return Rating(
      source: source ?? '',
      value: value ?? '',
    );
  }
}
