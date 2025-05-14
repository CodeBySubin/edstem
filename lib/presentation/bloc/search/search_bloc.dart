import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:edstem/domain/usecases/search_movies.dart';
import 'search_event.dart';
import 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final FetchMovies fetchMovies;
  Timer? _debounce;

  SearchBloc({required this.fetchMovies}) : super(const SearchState()) {
    on<SearchTextChanged>(_onSearchTextChanged);
    on<SearchLoadMore>(_onLoadMore);
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
        emit(state.copyWith(
          status: SearchStatus.success,
          results: movies,
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

      emit(state.copyWith(
        status: SearchStatus.success,
        results: List.of(state.results)..addAll(movies),
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

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}
