// lib/data/models/movie_model.dart


import 'package:edstem/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.title,
    required super.year,
    required super.imdbID,
    required super.type,
    required super.poster,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      title: json['Title'] ?? '',
      year: json['Year'] ?? '',
      imdbID: json['imdbID'] ?? '',
      type: json['Type'] ?? '',
      poster: json['Poster'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Title': title,
      'Year': year,
      'imdbID': imdbID,
      'Type': type,
      'Poster': poster,
    };
  }
  Movie toEntity() {
  return Movie(
    title: title,
    year: year,
    imdbID: imdbID,
    type: type,
    poster: poster,
  );
}

}


