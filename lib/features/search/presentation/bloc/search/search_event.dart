import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchTextChanged(String query) = SearchTextChanged;
  const factory SearchEvent.filterByYear(String year) = FilterByYear;
  const factory SearchEvent.searchLoadMore() = SearchLoadMore;
}
