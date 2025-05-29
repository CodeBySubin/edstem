import 'dart:async';
import 'package:edstem/features/search/domain/entities/movie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edstem/features/search/domain/usecases/search_movies.dart';
import 'search_event.dart';
import 'search_state.dart';
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final FetchMovies fetchMovies;
  Timer? _debounce;

  SearchBloc({required this.fetchMovies}) : super(const SearchState()) {
    on<SearchTextChanged>(_onSearchTextChanged);
    on<SearchLoadMore>(_onLoadMore);
    on<FilterByYear>(_onFilterByYear);
  }

  Future<void> _onSearchTextChanged(
    SearchTextChanged event,
    Emitter<SearchState> emit,
  ) async {
    _debounce?.cancel();
    final completer = Completer<void>();
    _debounce = Timer(const Duration(milliseconds: 300), () async {
      final query = event.query.trim();
      if (query.isEmpty) {
        completer.complete();
        return;
      }

      emit(state.copyWith(
        status: SearchStatus.loading,
        results: [],
        currentPage: 1,
        hasReachedMax: false,
        lastQuery: query,
      ));

      try {
        final movies = await fetchMovies.execute(query, 1);
        final filtered = _applyFilters(movies);
        emit(state.copyWith(
          status: SearchStatus.success,
          results: movies,
          filter: filtered,
          currentPage: 2,
          hasReachedMax: movies.isEmpty,
        ));
      } catch (error) {
        emit(state.copyWith(
          status: SearchStatus.failure,
          errorMessage: error.toString(),
        ));
      }
      completer.complete();
    });
    await completer.future;
  }

  Future<void> _onLoadMore(
    SearchLoadMore event,
    Emitter<SearchState> emit,
  ) async {
    if (state.hasReachedMax || state.status == SearchStatus.loading) return;
    emit(state.copyWith(status: SearchStatus.loading));
    try {
      final movies = await fetchMovies.execute(state.lastQuery, state.currentPage);
      final allResults = List.of(state.results)..addAll(movies);
      final filtered = _applyFilters(allResults);
      emit(state.copyWith(
        status: SearchStatus.success,
        results: allResults,
        filter: filtered,
        currentPage: state.currentPage + 1,
        hasReachedMax: movies.isEmpty,
      ));
    } catch (error) {
      emit(state.copyWith(
        status: SearchStatus.failure,
        errorMessage: error.toString(),
      ));
    }
  }

  void _onFilterByYear(FilterByYear event, Emitter<SearchState> emit) {
    emit(state.copyWith(selectedYear: event.year));
    final filtered = _applyFilters(state.results);
    emit(state.copyWith(filter: filtered));
  }



List<Movie> _applyFilters(List<Movie> movies) {
  return movies.where((movie) {
    final matchesYear = state.selectedYear == null || state.selectedYear!.isEmpty || movie.year == state.selectedYear;    
    return matchesYear;
  }).toList();
}


  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}
