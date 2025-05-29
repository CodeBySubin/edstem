// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      title: json['Title'] as String,
      year: json['Year'] as String,
      imdbID: json['imdbID'] as String,
      type: json['Type'] as String,
      poster: json['Poster'] as String,
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Year': instance.year,
      'imdbID': instance.imdbID,
      'Type': instance.type,
      'Poster': instance.poster,
    };
