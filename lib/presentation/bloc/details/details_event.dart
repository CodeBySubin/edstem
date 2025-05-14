import 'package:equatable/equatable.dart';

abstract class MovieDetailEvent extends Equatable {
  const MovieDetailEvent();

  @override
  List<Object?> get props => [];
}

class LoadMovieDetail extends MovieDetailEvent {
  final String imdbId;

  const LoadMovieDetail(this.imdbId);

  @override
  List<Object?> get props => [imdbId];
}
