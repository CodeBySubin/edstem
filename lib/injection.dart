import 'package:edstem/domain/usecases/fetch_movie_details.dart';
import 'package:edstem/presentation/bloc/details/details_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:edstem/core/network/api_client.dart';

// Data Layer
import 'package:edstem/data/datasources/search_data_source.dart';
import 'package:edstem/data/datasources/movie_detail_source.dart';
import 'package:edstem/data/repositories/movie_repository_impl.dart';
import 'package:edstem/data/repositories/movie_detail_repository_impl.dart';

// Domain Layer
import 'package:edstem/domain/repositories/movie_repository.dart';
import 'package:edstem/domain/repositories/movie_detail_repository.dart';
import 'package:edstem/domain/usecases/search_movies.dart';

// Presentation Layer
import 'package:edstem/presentation/bloc/search/search_bloc.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // Core
  getIt.registerLazySingleton<ApiClient>(() => ApiClient());

  // Data Sources
  getIt.registerLazySingleton<MovieRemoteDataSource>(
    () => MovieRemoteDataSourceImpl(apiClient: getIt<ApiClient>()),
  );
  getIt.registerLazySingleton<MovieDetailRemoteDataSource>(
    () => MovieDetailRemoteDataSourceImpl(getIt<ApiClient>()),
  );

  // Repositories
  getIt.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(remoteDataSource: getIt<MovieRemoteDataSource>()),
  );
  getIt.registerLazySingleton<MovieDetailRepository>(
    () => MovieDetailRepositoryImpl(getIt<MovieDetailRemoteDataSource>()),
  );

  // Use Cases
  getIt.registerLazySingleton<FetchMovies>(
    () => FetchMovies(movieRepository: getIt<MovieRepository>()),
  );
  getIt.registerLazySingleton<FetchMovieDetail>(
    () => FetchMovieDetail(getIt<MovieDetailRepository>()),
  );

  // Blocs
  getIt.registerFactory<SearchBloc>(
    () => SearchBloc(fetchMovies: getIt<FetchMovies>()),
  );
  getIt.registerFactory<MovieDetailBloc>(
    () => MovieDetailBloc(getIt<FetchMovieDetail>()),
  );
}
