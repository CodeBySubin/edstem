import 'package:edstem/data/datasources/movie_detail_source.dart';
import 'package:edstem/domain/entities/details.dart';
import 'package:edstem/domain/repositories/movie_detail_repository.dart';

class MovieDetailRepositoryImpl implements MovieDetailRepository {
  final MovieDetailRemoteDataSource remoteDataSource;

  MovieDetailRepositoryImpl(this.remoteDataSource);

  @override
  Future<MovieDetail> fetchMovieDetail(String imdbId) async {
    final model = await remoteDataSource.fetchMovieDetail(imdbId);
    return model.toEntity();
  }
}
