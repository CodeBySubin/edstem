
import 'package:edstem/features/search/data/datasources/movie_detail_source.dart';
import 'package:edstem/features/search/domain/entities/details.dart';
import 'package:edstem/features/search/domain/repositories/movie_detail_repository.dart';
import 'package:edstem/features/search/data/models/details_model.dart';

class MovieDetailRepositoryImpl implements MovieDetailRepository {
  final MovieDetailRemoteDataSource remoteDataSource;

  MovieDetailRepositoryImpl(this.remoteDataSource);

  @override
  Future<MovieDetail> fetchMovieDetail(String imdbId) async {
    final model = await remoteDataSource.fetchMovieDetail(imdbId);
    return model.toEntity();
  }
}
