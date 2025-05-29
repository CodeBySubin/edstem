// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SearchState {
  SearchStatus get status => throw _privateConstructorUsedError;
  List<Movie> get results => throw _privateConstructorUsedError;
  List<Movie> get filter => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  String get lastQuery => throw _privateConstructorUsedError;
  String? get selectedYear => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
    SearchState value,
    $Res Function(SearchState) then,
  ) = _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call({
    SearchStatus status,
    List<Movie> results,
    List<Movie> filter,
    bool hasReachedMax,
    String? errorMessage,
    int currentPage,
    String lastQuery,
    String? selectedYear,
  });
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
    Object? filter = null,
    Object? hasReachedMax = null,
    Object? errorMessage = freezed,
    Object? currentPage = null,
    Object? lastQuery = null,
    Object? selectedYear = freezed,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as SearchStatus,
            results:
                null == results
                    ? _value.results
                    : results // ignore: cast_nullable_to_non_nullable
                        as List<Movie>,
            filter:
                null == filter
                    ? _value.filter
                    : filter // ignore: cast_nullable_to_non_nullable
                        as List<Movie>,
            hasReachedMax:
                null == hasReachedMax
                    ? _value.hasReachedMax
                    : hasReachedMax // ignore: cast_nullable_to_non_nullable
                        as bool,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
            currentPage:
                null == currentPage
                    ? _value.currentPage
                    : currentPage // ignore: cast_nullable_to_non_nullable
                        as int,
            lastQuery:
                null == lastQuery
                    ? _value.lastQuery
                    : lastQuery // ignore: cast_nullable_to_non_nullable
                        as String,
            selectedYear:
                freezed == selectedYear
                    ? _value.selectedYear
                    : selectedYear // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
    _$SearchStateImpl value,
    $Res Function(_$SearchStateImpl) then,
  ) = __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SearchStatus status,
    List<Movie> results,
    List<Movie> filter,
    bool hasReachedMax,
    String? errorMessage,
    int currentPage,
    String lastQuery,
    String? selectedYear,
  });
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
    _$SearchStateImpl _value,
    $Res Function(_$SearchStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
    Object? filter = null,
    Object? hasReachedMax = null,
    Object? errorMessage = freezed,
    Object? currentPage = null,
    Object? lastQuery = null,
    Object? selectedYear = freezed,
  }) {
    return _then(
      _$SearchStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as SearchStatus,
        results:
            null == results
                ? _value._results
                : results // ignore: cast_nullable_to_non_nullable
                    as List<Movie>,
        filter:
            null == filter
                ? _value._filter
                : filter // ignore: cast_nullable_to_non_nullable
                    as List<Movie>,
        hasReachedMax:
            null == hasReachedMax
                ? _value.hasReachedMax
                : hasReachedMax // ignore: cast_nullable_to_non_nullable
                    as bool,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
        currentPage:
            null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                    as int,
        lastQuery:
            null == lastQuery
                ? _value.lastQuery
                : lastQuery // ignore: cast_nullable_to_non_nullable
                    as String,
        selectedYear:
            freezed == selectedYear
                ? _value.selectedYear
                : selectedYear // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl({
    this.status = SearchStatus.initial,
    final List<Movie> results = const [],
    final List<Movie> filter = const [],
    this.hasReachedMax = false,
    this.errorMessage,
    this.currentPage = 1,
    this.lastQuery = '',
    this.selectedYear = '',
  }) : _results = results,
       _filter = filter;

  @override
  @JsonKey()
  final SearchStatus status;
  final List<Movie> _results;
  @override
  @JsonKey()
  List<Movie> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  final List<Movie> _filter;
  @override
  @JsonKey()
  List<Movie> get filter {
    if (_filter is EqualUnmodifiableListView) return _filter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filter);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final String lastQuery;
  @override
  @JsonKey()
  final String? selectedYear;

  @override
  String toString() {
    return 'SearchState(status: $status, results: $results, filter: $filter, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage, currentPage: $currentPage, lastQuery: $lastQuery, selectedYear: $selectedYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality().equals(other._filter, _filter) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastQuery, lastQuery) ||
                other.lastQuery == lastQuery) &&
            (identical(other.selectedYear, selectedYear) ||
                other.selectedYear == selectedYear));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_results),
    const DeepCollectionEquality().hash(_filter),
    hasReachedMax,
    errorMessage,
    currentPage,
    lastQuery,
    selectedYear,
  );

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState({
    final SearchStatus status,
    final List<Movie> results,
    final List<Movie> filter,
    final bool hasReachedMax,
    final String? errorMessage,
    final int currentPage,
    final String lastQuery,
    final String? selectedYear,
  }) = _$SearchStateImpl;

  @override
  SearchStatus get status;
  @override
  List<Movie> get results;
  @override
  List<Movie> get filter;
  @override
  bool get hasReachedMax;
  @override
  String? get errorMessage;
  @override
  int get currentPage;
  @override
  String get lastQuery;
  @override
  String? get selectedYear;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
