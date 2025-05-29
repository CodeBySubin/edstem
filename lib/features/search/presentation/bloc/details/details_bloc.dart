import 'package:edstem/core/network/dio_exception.dart';
import 'package:edstem/features/search/domain/usecases/fetch_movie_details.dart';
import 'package:edstem/features/search/presentation/bloc/details/details_event.dart';
import 'package:edstem/features/search/presentation/bloc/details/details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final FetchMovieDetail fetchMovieDetail;

  MovieDetailBloc(this.fetchMovieDetail) : super(MovieDetailInitial()) {
    on<LoadMovieDetail>(_onLoadMovieDetail);
  }

  Future<void> _onLoadMovieDetail(
    LoadMovieDetail event,
    Emitter<MovieDetailState> emit,
  ) async {
    emit(MovieDetailLoading());
    try {
      final detail = await fetchMovieDetail.execute(event.imdbId);
      emit(MovieDetailLoaded(detail));
   } catch (error) {
      if (error is AppError) {
        emit(MovieDetailError(error.message));
      } else {
        emit(const MovieDetailError("An unexpected error occurred."));
      }
  }
}
}