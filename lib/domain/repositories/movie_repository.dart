import 'package:edstem/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> fetchMovies(String query, int page);
}
