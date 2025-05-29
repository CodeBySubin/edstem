import 'package:dio/dio.dart';
import 'package:edstem/core/network/api_endpoint.dart';
import 'package:flutter/material.dart';

class ApiClient {
  late final Dio _dio;
  // final String? _token = dotenv.env['API_KEY'];

  ApiClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: APIConfig.baseURL,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          // 'Authorization': 'Bearer $_token',
        },
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          debugPrint("[API REQUEST] ${options.method} → ${options.uri}");
          if (options.data != null) debugPrint("[BODY] ${options.data}");
          return handler.next(options);
        },
        onResponse: (response, handler) {
          debugPrint(
            "[API RESPONSE] ${response.statusCode} → ${response.requestOptions.uri}",
          );
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          debugPrint("[API ERROR] ${e.message}");
          if (e.response != null) {
            debugPrint(
              "[ERROR DETAILS] ${e.response?.statusCode} → ${e.response?.data}",
            );
          }
          return handler.next(e);
        },
      ),
    );
  }


  /// **GET Request**
  Future<Response> get(String endpoint, {Map<String, dynamic>? params}) async {
    return await _dio.get(endpoint, queryParameters: params);
  }

  /// **POST Request**
  Future<Response> post(String endpoint, {dynamic data}) async {
    return await _dio.post(endpoint, data: data);
  }

  /// **PUT Request**
  Future<Response> put(String endpoint, {dynamic data}) async {
    return await _dio.put(endpoint, data: data);
  }

  /// **DELETE Request**
  Future<Response> delete(String endpoint, {dynamic data}) async {
    return await _dio.delete(endpoint, data: data);
  }
}
