import 'package:demo/dio/request_interceptors.dart';
import 'package:demo/dio/response_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'error_interceptors.dart';

const String requiredToken = 'tokenRequired';

final baseUrlProvider =
    Provider<String>((ref) => 'http://jsonplaceholder.typicode.com/');

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  final baseUrl = ref.watch(baseUrlProvider);
  dio.options.baseUrl = baseUrl;
  dio.options.connectTimeout = 30000;
  dio.options.receiveTimeout = 30000;
  dio.options.contentType = Headers.jsonContentType;
  dio.options.extra = <String, Object>{requiredToken: true};
  dio.interceptors.addAll([
    LogInterceptor(),
    RequestInterceptor(),
    ResponseInterceptor(),
    ErrorInterceptor(),
  ]);
  return dio;
});
