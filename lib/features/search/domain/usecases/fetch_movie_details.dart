import 'package:edstem/features/search/domain/entities/details.dart';

import '../repositories/movie_detail_repository.dart';

class FetchMovieDetail {
  final MovieDetailRepository repository;

  FetchMovieDetail(this.repository);

  Future<MovieDetail> execute(String imdbId) {
    return repository.fetchMovieDetail(imdbId);
  }
}
