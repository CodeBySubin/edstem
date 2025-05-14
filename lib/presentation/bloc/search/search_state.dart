import 'package:equatable/equatable.dart';
import 'package:edstem/domain/entities/movie.dart';

enum SearchStatus { initial, loading, success, failure }

class SearchState extends Equatable {
  final SearchStatus status;
  final List<Movie> results;
  final bool hasReachedMax;
  final String? errorMessage;
  final int currentPage;
  final String lastQuery;

  const SearchState({
    this.status = SearchStatus.initial,
    this.results = const [],
    this.hasReachedMax = false,
    this.errorMessage,
    this.currentPage = 1,
    this.lastQuery = '',
  });

  SearchState copyWith({
    SearchStatus? status,
    List<Movie>? results,
    bool? hasReachedMax,
    String? errorMessage,
    int? currentPage,
    String? lastQuery,
  }) {
    return SearchState(
      status: status ?? this.status,
      results: results ?? this.results,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      errorMessage: errorMessage ?? this.errorMessage,
      currentPage: currentPage ?? this.currentPage,
      lastQuery: lastQuery ?? this.lastQuery,
    );
  }

  @override
  List<Object?> get props => [status, results, hasReachedMax, errorMessage, currentPage, lastQuery];
}
