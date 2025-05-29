import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:edstem/features/search/domain/entities/movie.dart';

part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Year') required String year,
    @JsonKey(name: 'imdbID') required String imdbID,
    @JsonKey(name: 'Type') required String type,
    @JsonKey(name: 'Poster') required String poster,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);  
}

extension MovieModelX on MovieModel {
  Movie toEntity() => Movie(
        title: title,
        year: year,
        imdbID: imdbID,
        type: type,
        poster: poster,
      );
}
