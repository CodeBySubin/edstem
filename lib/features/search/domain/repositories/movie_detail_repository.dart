
import 'package:edstem/features/search/domain/entities/details.dart';

abstract class MovieDetailRepository {
  Future<MovieDetail> fetchMovieDetail(String imdbId);
}
