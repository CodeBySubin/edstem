import 'package:edstem/domain/entities/details.dart';

class MovieDetailModel extends MovieDetail {
  const MovieDetailModel({
    required super.title,
    required super.year,
    required super.rated,
    required super.released,
    required super.runtime,
    required super.genre,
    required super.director,
    required super.writer,
    required super.actors,
    required super.plot,
    required super.language,
    required super.country,
    required super.awards,
    required super.poster,
    required super.ratings,
    required super.metascore,
    required super.imdbRating,
    required super.imdbVotes,
    required super.imdbID,
    required super.type,
    required super.dvd,
    required super.boxOffice,
    required super.production,
    required super.website,
  });

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailModel(
      title: json['Title'] ?? '',
      year: json['Year'] ?? '',
      rated: json['Rated'] ?? '',
      released: json['Released'] ?? '',
      runtime: json['Runtime'] ?? '',
      genre: json['Genre'] ?? '',
      director: json['Director'] ?? '',
      writer: json['Writer'] ?? '',
      actors: json['Actors'] ?? '',
      plot: json['Plot'] ?? '',
      language: json['Language'] ?? '',
      country: json['Country'] ?? '',
      awards: json['Awards'] ?? '',
      poster: json['Poster'] ?? '',
      ratings: (json['Ratings'] as List<dynamic>?)
              ?.map((e) => Rating(
                    source: e['Source'] ?? '',
                    value: e['Value'] ?? '',
                  ))
              .toList() ??
          [],
      metascore: json['Metascore'] ?? '',
      imdbRating: json['imdbRating'] ?? '',
      imdbVotes: json['imdbVotes'] ?? '',
      imdbID: json['imdbID'] ?? '',
      type: json['Type'] ?? '',
      dvd: json['DVD'] ?? '',
      boxOffice: json['BoxOffice'] ?? '',
      production: json['Production'] ?? '',
      website: json['Website'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Title': title,
      'Year': year,
      'Rated': rated,
      'Released': released,
      'Runtime': runtime,
      'Genre': genre,
      'Director': director,
      'Writer': writer,
      'Actors': actors,
      'Plot': plot,
      'Language': language,
      'Country': country,
      'Awards': awards,
      'Poster': poster,
      'Ratings': ratings.map((r) => {'Source': r.source, 'Value': r.value}).toList(),
      'Metascore': metascore,
      'imdbRating': imdbRating,
      'imdbVotes': imdbVotes,
      'imdbID': imdbID,
      'Type': type,
      'DVD': dvd,
      'BoxOffice': boxOffice,
      'Production': production,
      'Website': website,
    };
  }

  // ✅ Add this to convert model to entity
  MovieDetail toEntity() {
    return MovieDetail(
      title: title,
      year: year,
      rated: rated,
      released: released,
      runtime: runtime,
      genre: genre,
      director: director,
      writer: writer,
      actors: actors,
      plot: plot,
      language: language,
      country: country,
      awards: awards,
      poster: poster,
      ratings: ratings,
      metascore: metascore,
      imdbRating: imdbRating,
      imdbVotes: imdbVotes,
      imdbID: imdbID,
      type: type,
      dvd: dvd,
      boxOffice: boxOffice,
      production: production,
      website: website,
    );
  }
}
