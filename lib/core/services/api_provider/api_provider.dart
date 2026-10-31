import 'package:dio/dio.dart';
import 'package:task1/core/services/api_provider/api_constants.dart';

class ApiProvider {
  static late Dio dio;

  static void init() {
    dio = Dio(BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: {
        'User-Agent': 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36',
        'Accept': 'application/json',
      },
    ));
  }

  static Future<Response<dynamic>> get({
    required String endPoint,
    Object? data,
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? header,
  }) async {
    try {
      print('REQUEST URL: ${dio.options.baseUrl}$endPoint');

      final response = await dio.get(
        endPoint,
        options: Options(headers: header),
        queryParameters: queryParam,
        data: data,
      );

      print('STATUS CODE: ${response.statusCode}');
      print('RESPONSE DATA: ${response.data}');

      return response;
    } on DioException catch (e) {
      print('DIO ERROR TYPE: ${e.type}');
      print('DIO ERROR MESSAGE: ${e.message}');
      print('DIO ERROR: $e');
      rethrow;
    }
  }
}