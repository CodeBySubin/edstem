
import 'package:edstem/domain/entities/details.dart';

abstract class MovieDetailRepository {
  Future<MovieDetail> fetchMovieDetail(String imdbId);
}
