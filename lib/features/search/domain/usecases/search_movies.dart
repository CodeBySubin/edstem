import 'package:edstem/features/search/domain/entities/movie.dart';
import 'package:edstem/features/search/domain/repositories/movie_repository.dart';

class FetchMovies {
  final MovieRepository movieRepository;

  FetchMovies({required this.movieRepository});

  Future<List<Movie>> execute(String query, int page) {
    return movieRepository.fetchMovies(query, page);
  }
}
