// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MovieDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetail detail) loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetail detail)? loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetail detail)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailInitial value) initial,
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailLoaded value) loaded,
    required TResult Function(MovieDetailError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailInitial value)? initial,
    TResult? Function(MovieDetailLoading value)? loading,
    TResult? Function(MovieDetailLoaded value)? loaded,
    TResult? Function(MovieDetailError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailInitial value)? initial,
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailLoaded value)? loaded,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
    MovieDetailState value,
    $Res Function(MovieDetailState) then,
  ) = _$MovieDetailStateCopyWithImpl<$Res, MovieDetailState>;
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res, $Val extends MovieDetailState>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MovieDetailInitialImplCopyWith<$Res> {
  factory _$$MovieDetailInitialImplCopyWith(
    _$MovieDetailInitialImpl value,
    $Res Function(_$MovieDetailInitialImpl) then,
  ) = __$$MovieDetailInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieDetailInitialImplCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$MovieDetailInitialImpl>
    implements _$$MovieDetailInitialImplCopyWith<$Res> {
  __$$MovieDetailInitialImplCopyWithImpl(
    _$MovieDetailInitialImpl _value,
    $Res Function(_$MovieDetailInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MovieDetailInitialImpl implements MovieDetailInitial {
  const _$MovieDetailInitialImpl();

  @override
  String toString() {
    return 'MovieDetailState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieDetailInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetail detail) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetail detail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetail detail)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailInitial value) initial,
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailLoaded value) loaded,
    required TResult Function(MovieDetailError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailInitial value)? initial,
    TResult? Function(MovieDetailLoading value)? loading,
    TResult? Function(MovieDetailLoaded value)? loaded,
    TResult? Function(MovieDetailError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailInitial value)? initial,
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailLoaded value)? loaded,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MovieDetailInitial implements MovieDetailState {
  const factory MovieDetailInitial() = _$MovieDetailInitialImpl;
}

/// @nodoc
abstract class _$$MovieDetailLoadingImplCopyWith<$Res> {
  factory _$$MovieDetailLoadingImplCopyWith(
    _$MovieDetailLoadingImpl value,
    $Res Function(_$MovieDetailLoadingImpl) then,
  ) = __$$MovieDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieDetailLoadingImplCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$MovieDetailLoadingImpl>
    implements _$$MovieDetailLoadingImplCopyWith<$Res> {
  __$$MovieDetailLoadingImplCopyWithImpl(
    _$MovieDetailLoadingImpl _value,
    $Res Function(_$MovieDetailLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MovieDetailLoadingImpl implements MovieDetailLoading {
  const _$MovieDetailLoadingImpl();

  @override
  String toString() {
    return 'MovieDetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetail detail) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetail detail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetail detail)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailInitial value) initial,
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailLoaded value) loaded,
    required TResult Function(MovieDetailError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailInitial value)? initial,
    TResult? Function(MovieDetailLoading value)? loading,
    TResult? Function(MovieDetailLoaded value)? loaded,
    TResult? Function(MovieDetailError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailInitial value)? initial,
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailLoaded value)? loaded,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieDetailLoading implements MovieDetailState {
  const factory MovieDetailLoading() = _$MovieDetailLoadingImpl;
}

/// @nodoc
abstract class _$$MovieDetailLoadedImplCopyWith<$Res> {
  factory _$$MovieDetailLoadedImplCopyWith(
    _$MovieDetailLoadedImpl value,
    $Res Function(_$MovieDetailLoadedImpl) then,
  ) = __$$MovieDetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieDetail detail});

  $MovieDetailCopyWith<$Res> get detail;
}

/// @nodoc
class __$$MovieDetailLoadedImplCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$MovieDetailLoadedImpl>
    implements _$$MovieDetailLoadedImplCopyWith<$Res> {
  __$$MovieDetailLoadedImplCopyWithImpl(
    _$MovieDetailLoadedImpl _value,
    $Res Function(_$MovieDetailLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? detail = null}) {
    return _then(
      _$MovieDetailLoadedImpl(
        null == detail
            ? _value.detail
            : detail // ignore: cast_nullable_to_non_nullable
                as MovieDetail,
      ),
    );
  }

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieDetailCopyWith<$Res> get detail {
    return $MovieDetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }
}

/// @nodoc

class _$MovieDetailLoadedImpl implements MovieDetailLoaded {
  const _$MovieDetailLoadedImpl(this.detail);

  @override
  final MovieDetail detail;

  @override
  String toString() {
    return 'MovieDetailState.loaded(detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailLoadedImpl &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail);

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailLoadedImplCopyWith<_$MovieDetailLoadedImpl> get copyWith =>
      __$$MovieDetailLoadedImplCopyWithImpl<_$MovieDetailLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetail detail) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(detail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetail detail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(detail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetail detail)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(detail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailInitial value) initial,
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailLoaded value) loaded,
    required TResult Function(MovieDetailError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailInitial value)? initial,
    TResult? Function(MovieDetailLoading value)? loading,
    TResult? Function(MovieDetailLoaded value)? loaded,
    TResult? Function(MovieDetailError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailInitial value)? initial,
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailLoaded value)? loaded,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MovieDetailLoaded implements MovieDetailState {
  const factory MovieDetailLoaded(final MovieDetail detail) =
      _$MovieDetailLoadedImpl;

  MovieDetail get detail;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDetailLoadedImplCopyWith<_$MovieDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieDetailErrorImplCopyWith<$Res> {
  factory _$$MovieDetailErrorImplCopyWith(
    _$MovieDetailErrorImpl value,
    $Res Function(_$MovieDetailErrorImpl) then,
  ) = __$$MovieDetailErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MovieDetailErrorImplCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$MovieDetailErrorImpl>
    implements _$$MovieDetailErrorImplCopyWith<$Res> {
  __$$MovieDetailErrorImplCopyWithImpl(
    _$MovieDetailErrorImpl _value,
    $Res Function(_$MovieDetailErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$MovieDetailErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$MovieDetailErrorImpl implements MovieDetailError {
  const _$MovieDetailErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieDetailState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailErrorImplCopyWith<_$MovieDetailErrorImpl> get copyWith =>
      __$$MovieDetailErrorImplCopyWithImpl<_$MovieDetailErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetail detail) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetail detail)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetail detail)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailInitial value) initial,
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailLoaded value) loaded,
    required TResult Function(MovieDetailError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailInitial value)? initial,
    TResult? Function(MovieDetailLoading value)? loading,
    TResult? Function(MovieDetailLoaded value)? loaded,
    TResult? Function(MovieDetailError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailInitial value)? initial,
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailLoaded value)? loaded,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MovieDetailError implements MovieDetailState {
  const factory MovieDetailError(final String message) = _$MovieDetailErrorImpl;

  String get message;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDetailErrorImplCopyWith<_$MovieDetailErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
