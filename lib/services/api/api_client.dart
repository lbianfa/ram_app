import 'package:dio/dio.dart';
import 'package:ram_app/services/api/endpoints.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: Endpoints.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ),
  );
}
