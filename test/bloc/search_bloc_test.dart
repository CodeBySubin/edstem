import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:edstem/features/search/domain/entities/movie.dart';
import 'package:edstem/features/search/domain/usecases/search_movies.dart';
import 'package:edstem/features/search/presentation/bloc/search/search_bloc.dart';
import 'package:edstem/features/search/presentation/bloc/search/search_event.dart';
import 'package:edstem/features/search/presentation/bloc/search/search_state.dart';

class MockFetchMovies extends Mock implements FetchMovies {}

void main() {
  late FetchMovies mockFetchMovies;

  setUp(() {
    mockFetchMovies = MockFetchMovies();
  });

  const movie1 = Movie(
    title: 'Inception',
    year: '2010',
    imdbID: 'tt1375666',
    type: 'movie',
    poster: 'https://poster.url/inception.jpg',
  );

  const movie2 = Movie(
    title: 'Interstellar',
    year: '2014',
    imdbID: 'tt0816692',
    type: 'movie',
    poster: 'https://poster.url/interstellar.jpg',
  );

  final mockMovies = [movie1, movie2];

  group('SearchBloc Tests', () {
    blocTest<SearchBloc, SearchState>(
      'emits [loading, success] when search returns results',
      build: () {
        when(() => mockFetchMovies.execute('inception', 1))
            .thenAnswer((_) async => mockMovies);
        return SearchBloc(fetchMovies: mockFetchMovies);
      },
      act: (bloc) => bloc.add(const SearchTextChanged('inception')),
      wait: const Duration(milliseconds: 400), // debounce time
      expect: () => [
        const SearchState(
          status: SearchStatus.loading,
          results: [],
          currentPage: 1,
          hasReachedMax: false,
          lastQuery: 'inception',
        ),
        SearchState(
          status: SearchStatus.success,
          results: mockMovies,
          currentPage: 2,
          hasReachedMax: false,
          lastQuery: 'inception',
        ),
      ],
      verify: (_) {
        verify(() => mockFetchMovies.execute('inception', 1)).called(1);
      },
    );

    blocTest<SearchBloc, SearchState>(
      'emits [loading, failure] when search throws an exception',
      build: () {
        when(() => mockFetchMovies.execute('batman', 1))
            .thenThrow(Exception('Network error'));
        return SearchBloc(fetchMovies: mockFetchMovies);
      },
      act: (bloc) => bloc.add(const SearchTextChanged('batman')),
      wait: const Duration(milliseconds: 400),
      expect: () => [
        const SearchState(
          status: SearchStatus.loading,
          results: [],
          currentPage: 1,
          hasReachedMax: false,
          lastQuery: 'batman',
        ),
        const SearchState(
          status: SearchStatus.failure,
          results: [],
          currentPage: 1,
          hasReachedMax: false,
          lastQuery: 'batman',
          errorMessage: 'Exception: Network error',
        ),
      ],
      verify: (_) {
        verify(() => mockFetchMovies.execute('batman', 1)).called(1);
      },
    );
  });
}
