// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Movie {
  String get title => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  String get imdbID => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get poster => throw _privateConstructorUsedError;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call({
    String title,
    String year,
    String imdbID,
    String type,
    String poster,
  });
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? year = null,
    Object? imdbID = null,
    Object? type = null,
    Object? poster = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            year:
                null == year
                    ? _value.year
                    : year // ignore: cast_nullable_to_non_nullable
                        as String,
            imdbID:
                null == imdbID
                    ? _value.imdbID
                    : imdbID // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            poster:
                null == poster
                    ? _value.poster
                    : poster // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
    _$MovieImpl value,
    $Res Function(_$MovieImpl) then,
  ) = __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String year,
    String imdbID,
    String type,
    String poster,
  });
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
    _$MovieImpl _value,
    $Res Function(_$MovieImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? year = null,
    Object? imdbID = null,
    Object? type = null,
    Object? poster = null,
  }) {
    return _then(
      _$MovieImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        year:
            null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                    as String,
        imdbID:
            null == imdbID
                ? _value.imdbID
                : imdbID // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        poster:
            null == poster
                ? _value.poster
                : poster // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$MovieImpl implements _Movie {
  const _$MovieImpl({
    required this.title,
    required this.year,
    required this.imdbID,
    required this.type,
    required this.poster,
  });

  @override
  final String title;
  @override
  final String year;
  @override
  final String imdbID;
  @override
  final String type;
  @override
  final String poster;

  @override
  String toString() {
    return 'Movie(title: $title, year: $year, imdbID: $imdbID, type: $type, poster: $poster)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.imdbID, imdbID) || other.imdbID == imdbID) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.poster, poster) || other.poster == poster));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, year, imdbID, type, poster);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);
}

abstract class _Movie implements Movie {
  const factory _Movie({
    required final String title,
    required final String year,
    required final String imdbID,
    required final String type,
    required final String poster,
  }) = _$MovieImpl;

  @override
  String get title;
  @override
  String get year;
  @override
  String get imdbID;
  @override
  String get type;
  @override
  String get poster;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
