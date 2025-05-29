import 'package:edstem/core/network/api_client.dart';
import 'package:edstem/core/network/api_endpoint.dart';
import 'package:edstem/features/search/data/models/search_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> fetchMovies(String query, int page);
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final ApiClient apiClient;

  MovieRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<List<MovieModel>> fetchMovies(String query, int page) async {
    final String? token = dotenv.env['API_KEY'];
    final response = await apiClient.get(
      APIEndPoints.search(query),
      params: {"apikey": token, "s": query, "page": page.toString()},
    );
    final List<dynamic> resultsJson = response.data['Search'] ?? [];
    return resultsJson.map((e) => MovieModel.fromJson(e)).toList();
  }
}
