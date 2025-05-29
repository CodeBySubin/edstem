// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  @JsonKey(name: 'Title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'Year')
  String get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdbID')
  String get imdbID => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'Poster')
  String get poster => throw _privateConstructorUsedError;

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
    MovieModel value,
    $Res Function(MovieModel) then,
  ) = _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'Title') String title,
    @JsonKey(name: 'Year') String year,
    @JsonKey(name: 'imdbID') String imdbID,
    @JsonKey(name: 'Type') String type,
    @JsonKey(name: 'Poster') String poster,
  });
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieModel
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
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
    _$MovieModelImpl value,
    $Res Function(_$MovieModelImpl) then,
  ) = __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'Title') String title,
    @JsonKey(name: 'Year') String year,
    @JsonKey(name: 'imdbID') String imdbID,
    @JsonKey(name: 'Type') String type,
    @JsonKey(name: 'Poster') String poster,
  });
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
    _$MovieModelImpl _value,
    $Res Function(_$MovieModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieModel
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
      _$MovieModelImpl(
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
@JsonSerializable()
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl({
    @JsonKey(name: 'Title') required this.title,
    @JsonKey(name: 'Year') required this.year,
    @JsonKey(name: 'imdbID') required this.imdbID,
    @JsonKey(name: 'Type') required this.type,
    @JsonKey(name: 'Poster') required this.poster,
  });

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  @JsonKey(name: 'Title')
  final String title;
  @override
  @JsonKey(name: 'Year')
  final String year;
  @override
  @JsonKey(name: 'imdbID')
  final String imdbID;
  @override
  @JsonKey(name: 'Type')
  final String type;
  @override
  @JsonKey(name: 'Poster')
  final String poster;

  @override
  String toString() {
    return 'MovieModel(title: $title, year: $year, imdbID: $imdbID, type: $type, poster: $poster)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.imdbID, imdbID) || other.imdbID == imdbID) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.poster, poster) || other.poster == poster));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, year, imdbID, type, poster);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(this);
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel({
    @JsonKey(name: 'Title') required final String title,
    @JsonKey(name: 'Year') required final String year,
    @JsonKey(name: 'imdbID') required final String imdbID,
    @JsonKey(name: 'Type') required final String type,
    @JsonKey(name: 'Poster') required final String poster,
  }) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  @JsonKey(name: 'Title')
  String get title;
  @override
  @JsonKey(name: 'Year')
  String get year;
  @override
  @JsonKey(name: 'imdbID')
  String get imdbID;
  @override
  @JsonKey(name: 'Type')
  String get type;
  @override
  @JsonKey(name: 'Poster')
  String get poster;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
