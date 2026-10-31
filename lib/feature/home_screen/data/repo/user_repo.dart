import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:task1/core/services/api_provider/api_constants.dart';
import 'package:task1/feature/home_screen/data/model/user_response.dart';

import '../../../../core/services/api_provider/api_provider.dart';

class UserRepo {
  static Future<List<UserResponse>?> getUsers() async {
    try {
      var response = await ApiProvider.get(endPoint: ApiConstants.user);
      if (response.statusCode == 200) {
        try {
          print(' API DATA = ${response.data}');
          print('  URL = ${response.requestOptions.uri}');
          final List data = response.data;
          return data.map((e) => UserResponse.fromJson(e)).toList();
        } catch (e, stackTrace) {
          log(' ERROR: $e');
          log(' STACK TRACE: $stackTrace');
          rethrow;
        }
      } else {
        return null;
      }
    }
    on DioException catch (e, stackTrace) {

      log('DIO ERROR: $e');
      log('STATUS: ${e.response?.statusCode}');
      log('DATA: ${e.response?.data}');
      log('URL: ${e.requestOptions.uri}');
      log('STACK TRACE: $stackTrace');
      rethrow;
    }
  }
  }
