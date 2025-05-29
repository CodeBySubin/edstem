
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:edstem/features/search/domain/entities/movie.dart';

part 'search_state.freezed.dart';

enum SearchStatus { initial, loading, success, failure }
@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(SearchStatus.initial) SearchStatus status,
    @Default([]) List<Movie> results,
    @Default([]) List<Movie> filter,
    @Default(false) bool hasReachedMax,
    String? errorMessage,
    @Default(1) int currentPage,
    @Default('') String lastQuery,
    @Default('') String? selectedYear,
  }) = _SearchState;
}

