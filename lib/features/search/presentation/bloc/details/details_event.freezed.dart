// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MovieDetailEvent {
  String get imdbId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imdbId) loadMovieDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imdbId)? loadMovieDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imdbId)? loadMovieDetail,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMovieDetail value) loadMovieDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMovieDetail value)? loadMovieDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMovieDetail value)? loadMovieDetail,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDetailEventCopyWith<MovieDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailEventCopyWith<$Res> {
  factory $MovieDetailEventCopyWith(
    MovieDetailEvent value,
    $Res Function(MovieDetailEvent) then,
  ) = _$MovieDetailEventCopyWithImpl<$Res, MovieDetailEvent>;
  @useResult
  $Res call({String imdbId});
}

/// @nodoc
class _$MovieDetailEventCopyWithImpl<$Res, $Val extends MovieDetailEvent>
    implements $MovieDetailEventCopyWith<$Res> {
  _$MovieDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imdbId = null}) {
    return _then(
      _value.copyWith(
            imdbId:
                null == imdbId
                    ? _value.imdbId
                    : imdbId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoadMovieDetailImplCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$$LoadMovieDetailImplCopyWith(
    _$LoadMovieDetailImpl value,
    $Res Function(_$LoadMovieDetailImpl) then,
  ) = __$$LoadMovieDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imdbId});
}

/// @nodoc
class __$$LoadMovieDetailImplCopyWithImpl<$Res>
    extends _$MovieDetailEventCopyWithImpl<$Res, _$LoadMovieDetailImpl>
    implements _$$LoadMovieDetailImplCopyWith<$Res> {
  __$$LoadMovieDetailImplCopyWithImpl(
    _$LoadMovieDetailImpl _value,
    $Res Function(_$LoadMovieDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imdbId = null}) {
    return _then(
      _$LoadMovieDetailImpl(
        null == imdbId
            ? _value.imdbId
            : imdbId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$LoadMovieDetailImpl implements LoadMovieDetail {
  const _$LoadMovieDetailImpl(this.imdbId);

  @override
  final String imdbId;

  @override
  String toString() {
    return 'MovieDetailEvent.loadMovieDetail(imdbId: $imdbId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMovieDetailImpl &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imdbId);

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMovieDetailImplCopyWith<_$LoadMovieDetailImpl> get copyWith =>
      __$$LoadMovieDetailImplCopyWithImpl<_$LoadMovieDetailImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imdbId) loadMovieDetail,
  }) {
    return loadMovieDetail(imdbId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imdbId)? loadMovieDetail,
  }) {
    return loadMovieDetail?.call(imdbId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imdbId)? loadMovieDetail,
    required TResult orElse(),
  }) {
    if (loadMovieDetail != null) {
      return loadMovieDetail(imdbId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMovieDetail value) loadMovieDetail,
  }) {
    return loadMovieDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadMovieDetail value)? loadMovieDetail,
  }) {
    return loadMovieDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMovieDetail value)? loadMovieDetail,
    required TResult orElse(),
  }) {
    if (loadMovieDetail != null) {
      return loadMovieDetail(this);
    }
    return orElse();
  }
}

abstract class LoadMovieDetail implements MovieDetailEvent {
  const factory LoadMovieDetail(final String imdbId) = _$LoadMovieDetailImpl;

  @override
  String get imdbId;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMovieDetailImplCopyWith<_$LoadMovieDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
