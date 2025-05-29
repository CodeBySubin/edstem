import 'package:edstem/features/search/data/models/details_model.dart';
import 'package:edstem/core/network/api_client.dart';
import 'package:edstem/core/network/api_endpoint.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class MovieDetailRemoteDataSource {
  Future<MovieDetailModel> fetchMovieDetail(String imdbId);
}

class MovieDetailRemoteDataSourceImpl implements MovieDetailRemoteDataSource {
  final ApiClient apiClient;

  MovieDetailRemoteDataSourceImpl(this.apiClient);

  @override
  Future<MovieDetailModel> fetchMovieDetail(String imdbId) async {
    final String? token = dotenv.env['API_KEY'];
    final response = await apiClient.get(
      APIEndPoints.details(imdbId),
      params: {"apikey": token, "i": imdbId},
    );
    return MovieDetailModel.fromJson(response.data);
  }
}
