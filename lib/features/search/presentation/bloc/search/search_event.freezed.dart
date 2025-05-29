// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchTextChanged,
    required TResult Function(String year) filterByYear,
    required TResult Function() searchLoadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchTextChanged,
    TResult? Function(String year)? filterByYear,
    TResult? Function()? searchLoadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchTextChanged,
    TResult Function(String year)? filterByYear,
    TResult Function()? searchLoadMore,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(FilterByYear value) filterByYear,
    required TResult Function(SearchLoadMore value) searchLoadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(FilterByYear value)? filterByYear,
    TResult? Function(SearchLoadMore value)? searchLoadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(FilterByYear value)? filterByYear,
    TResult Function(SearchLoadMore value)? searchLoadMore,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
    SearchEvent value,
    $Res Function(SearchEvent) then,
  ) = _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchTextChangedImplCopyWith<$Res> {
  factory _$$SearchTextChangedImplCopyWith(
    _$SearchTextChangedImpl value,
    $Res Function(_$SearchTextChangedImpl) then,
  ) = __$$SearchTextChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchTextChangedImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchTextChangedImpl>
    implements _$$SearchTextChangedImplCopyWith<$Res> {
  __$$SearchTextChangedImplCopyWithImpl(
    _$SearchTextChangedImpl _value,
    $Res Function(_$SearchTextChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$SearchTextChangedImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchTextChangedImpl implements SearchTextChanged {
  const _$SearchTextChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchTextChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTextChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTextChangedImplCopyWith<_$SearchTextChangedImpl> get copyWith =>
      __$$SearchTextChangedImplCopyWithImpl<_$SearchTextChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchTextChanged,
    required TResult Function(String year) filterByYear,
    required TResult Function() searchLoadMore,
  }) {
    return searchTextChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchTextChanged,
    TResult? Function(String year)? filterByYear,
    TResult? Function()? searchLoadMore,
  }) {
    return searchTextChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchTextChanged,
    TResult Function(String year)? filterByYear,
    TResult Function()? searchLoadMore,
    required TResult orElse(),
  }) {
    if (searchTextChanged != null) {
      return searchTextChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(FilterByYear value) filterByYear,
    required TResult Function(SearchLoadMore value) searchLoadMore,
  }) {
    return searchTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(FilterByYear value)? filterByYear,
    TResult? Function(SearchLoadMore value)? searchLoadMore,
  }) {
    return searchTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(FilterByYear value)? filterByYear,
    TResult Function(SearchLoadMore value)? searchLoadMore,
    required TResult orElse(),
  }) {
    if (searchTextChanged != null) {
      return searchTextChanged(this);
    }
    return orElse();
  }
}

abstract class SearchTextChanged implements SearchEvent {
  const factory SearchTextChanged(final String query) = _$SearchTextChangedImpl;

  String get query;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchTextChangedImplCopyWith<_$SearchTextChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterByYearImplCopyWith<$Res> {
  factory _$$FilterByYearImplCopyWith(
    _$FilterByYearImpl value,
    $Res Function(_$FilterByYearImpl) then,
  ) = __$$FilterByYearImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String year});
}

/// @nodoc
class __$$FilterByYearImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$FilterByYearImpl>
    implements _$$FilterByYearImplCopyWith<$Res> {
  __$$FilterByYearImplCopyWithImpl(
    _$FilterByYearImpl _value,
    $Res Function(_$FilterByYearImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? year = null}) {
    return _then(
      _$FilterByYearImpl(
        null == year
            ? _value.year
            : year // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$FilterByYearImpl implements FilterByYear {
  const _$FilterByYearImpl(this.year);

  @override
  final String year;

  @override
  String toString() {
    return 'SearchEvent.filterByYear(year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByYearImpl &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByYearImplCopyWith<_$FilterByYearImpl> get copyWith =>
      __$$FilterByYearImplCopyWithImpl<_$FilterByYearImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchTextChanged,
    required TResult Function(String year) filterByYear,
    required TResult Function() searchLoadMore,
  }) {
    return filterByYear(year);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchTextChanged,
    TResult? Function(String year)? filterByYear,
    TResult? Function()? searchLoadMore,
  }) {
    return filterByYear?.call(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchTextChanged,
    TResult Function(String year)? filterByYear,
    TResult Function()? searchLoadMore,
    required TResult orElse(),
  }) {
    if (filterByYear != null) {
      return filterByYear(year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(FilterByYear value) filterByYear,
    required TResult Function(SearchLoadMore value) searchLoadMore,
  }) {
    return filterByYear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(FilterByYear value)? filterByYear,
    TResult? Function(SearchLoadMore value)? searchLoadMore,
  }) {
    return filterByYear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(FilterByYear value)? filterByYear,
    TResult Function(SearchLoadMore value)? searchLoadMore,
    required TResult orElse(),
  }) {
    if (filterByYear != null) {
      return filterByYear(this);
    }
    return orElse();
  }
}

abstract class FilterByYear implements SearchEvent {
  const factory FilterByYear(final String year) = _$FilterByYearImpl;

  String get year;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterByYearImplCopyWith<_$FilterByYearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadMoreImplCopyWith<$Res> {
  factory _$$SearchLoadMoreImplCopyWith(
    _$SearchLoadMoreImpl value,
    $Res Function(_$SearchLoadMoreImpl) then,
  ) = __$$SearchLoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadMoreImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchLoadMoreImpl>
    implements _$$SearchLoadMoreImplCopyWith<$Res> {
  __$$SearchLoadMoreImplCopyWithImpl(
    _$SearchLoadMoreImpl _value,
    $Res Function(_$SearchLoadMoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLoadMoreImpl implements SearchLoadMore {
  const _$SearchLoadMoreImpl();

  @override
  String toString() {
    return 'SearchEvent.searchLoadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchTextChanged,
    required TResult Function(String year) filterByYear,
    required TResult Function() searchLoadMore,
  }) {
    return searchLoadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchTextChanged,
    TResult? Function(String year)? filterByYear,
    TResult? Function()? searchLoadMore,
  }) {
    return searchLoadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchTextChanged,
    TResult Function(String year)? filterByYear,
    TResult Function()? searchLoadMore,
    required TResult orElse(),
  }) {
    if (searchLoadMore != null) {
      return searchLoadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchTextChanged value) searchTextChanged,
    required TResult Function(FilterByYear value) filterByYear,
    required TResult Function(SearchLoadMore value) searchLoadMore,
  }) {
    return searchLoadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchTextChanged value)? searchTextChanged,
    TResult? Function(FilterByYear value)? filterByYear,
    TResult? Function(SearchLoadMore value)? searchLoadMore,
  }) {
    return searchLoadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchTextChanged value)? searchTextChanged,
    TResult Function(FilterByYear value)? filterByYear,
    TResult Function(SearchLoadMore value)? searchLoadMore,
    required TResult orElse(),
  }) {
    if (searchLoadMore != null) {
      return searchLoadMore(this);
    }
    return orElse();
  }
}

abstract class SearchLoadMore implements SearchEvent {
  const factory SearchLoadMore() = _$SearchLoadMoreImpl;
}
