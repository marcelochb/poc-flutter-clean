import 'package:poccrud/src/core/api/_exports.dart';
import 'package:dio/dio.dart';

class ApiClientDio implements IApiClient {
  final Dio client;
  String baseUrl = 'http://localhost:3000';
  ApiClientDio({required this.client});

  @override
  Future delete(String url, {Map<String, dynamic>? body}) async {
    try {
      return await client.delete('$baseUrl/$url', data: body);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future get(String url, {Map<String, dynamic>? queryParameters}) async {
    try {
      return await client.get('$baseUrl/$url',
          queryParameters: queryParameters);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future post(String url, {Map<String, dynamic>? body}) async {
    try {
      return await client.post('$baseUrl/$url', data: body);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future put(String url, {Map<String, dynamic>? body}) async {
    try {
      return await client.put('$baseUrl/$url', data: body);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
