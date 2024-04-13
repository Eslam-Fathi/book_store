import 'package:dio/dio.dart';

class ApiService {
  ApiService(this._dio);

  final _baseUrl = "https://www.googleapis.com/books/v1/";

  final Dio _dio;

  Future<Map<String, dynamic>> getBooks({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');

    return response.data;
  }
}
