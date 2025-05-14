import 'package:edstem/data/datasources/search_data_source.dart';
import 'package:edstem/domain/entities/movie.dart';
import 'package:edstem/domain/repositories/movie_repository.dart';
class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Movie>> fetchMovies(String query, int page) async {
    final movieModels = await remoteDataSource.fetchMovies(query, page);
    return movieModels.map((movie) => movie.toEntity()).toList();
  }
}
