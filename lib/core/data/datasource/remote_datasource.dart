import 'dart:async';

import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:weather/core/error/exception.dart';

//this pattern is similar to the retrofit pattern
abstract class RemoteDataSource {
  RemoteDataSource({required this.dio, String? baseUrl}) {
    _baseUrl = baseUrl ?? '';
    _initDioClient();
  }

  late final String _baseUrl;

  final Dio dio;

  final millisecondsTimeoutWs = const Duration(seconds: 10);

  void _initDioClient() {
    final log = Logger('[${runtimeType.toString()}] ');
    dio.interceptors.clear();
    // dio.interceptors.add(DioFirebasePerformanceInterceptor());
    //Configure interceptors
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          log.fine(
            'Starting request: '
            '${options.method} -> ${options.uri}...',
          );

          options
            ..validateStatus = (status) {
              return status! < 400;
            }
            ..connectTimeout = millisecondsTimeoutWs
            ..receiveTimeout = millisecondsTimeoutWs;

          handler.next(options);
        },
        onResponse: (response, handler) {
          log.fine(
            'Request Response: '
            '${response.toString()}',
          );
          handler.next(response);
        },
        onError: (error, handler) async {
          log.warning(
            'Request failed: '
            '${error.requestOptions.method} -> ${error.requestOptions.uri}: '
            '[${error.type}]: ${error.message}',
          );

          handler.next(error);
        },
      ),
    );
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<T> performDeleteRequestApi<T>({
    required String apiEndpoint,
    String? token,
    Options? options,
  }) async {
    Options localOptions = options ?? Options();
    if (token != null) {
      final headers = localOptions.headers;
      localOptions = localOptions.copyWith(
        headers: {
          if (headers != null) ...headers,
          'Authorization': 'Bearer $token',
        },
      );
    }
    Future<Response<T>> request() => dio.delete<T>(
          _path(apiEndpoint),
          options: localOptions,
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performPostRequestApi<T>({
    required String apiEndpoint,
    dynamic data,
    String? token,
    Options? options,
    Map<String, dynamic>? queryParameters,
  }) {
    Options localOptions = options ?? Options();
    if (token != null) {
      final headers = localOptions.headers;
      localOptions = localOptions.copyWith(
        headers: {
          if (headers != null) ...headers,
          'Authorization': 'Bearer $token',
        },
      );
    }

    Future<Response<T>> request() async => dio.post<T>(
          _path(apiEndpoint),
          data: data,
          options: localOptions,
          queryParameters: _queryParameters(queryParameters),
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performPatchRequestApi<T>({
    required String apiEndpoint,
    String? body,
    String? token,
  }) async {
    Future<Response<T>> request() => dio.patch<T>(
          _path(apiEndpoint),
          data: body,
          options: (token != null)
              ? Options(headers: {'Authorization': 'Bearer $token'})
              : Options(),
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performPutRequestApi<T>({
    required String apiEndpoint,
    dynamic data,
    String? token,
  }) {
    Future<Response<T>> request() => dio.put<T>(
          _path(apiEndpoint),
          data: data,
          options: (token != null)
              ? Options(headers: {'Authorization': 'Bearer $token'})
              : Options(),
        );

    return _performRequestApi<T>(request);
  }

  Future<T> performGetRequestApi<T>({
    required String apiEndpoint,
    Map<String, dynamic>? queryParameters,
    Options? options,
    String? token,
  }) async {
    Options localOptions = options ?? Options();
    if (token != null) {
      final headers = localOptions.headers;
      localOptions = localOptions.copyWith(
        headers: {
          if (headers != null) ...headers,
          'Authorization': 'Bearer $token',
        },
      );
    }
    Future<Response<T>> request() async {
      return dio.get<T>(
        _path(apiEndpoint),
        queryParameters: _queryParameters(queryParameters),
        options: localOptions,
      );
    }

    return _performRequestApi(request);
  }

  Future<T> _performRequestApi<T>(
    Future<Response<T>> Function() request,
  ) async {
    try {
      final Response<T> response = await request();
      return response.data!;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          e.type == DioExceptionType.unknown) {
        throw const TimeoutException();
      }

      if (e.response?.statusCode == 401) {
        throw const UnauthorisedException();
      } else if (e.response?.statusCode == 404) {
        throw const NotFoundException();
      } else if (e.response?.statusCode == 400) {
        throw const BadRequestException();
      } else if (e.response?.statusCode == 504) {
        throw const TimeoutException();
      }
      throw const ServerException();
    }
  }

  Map<String, dynamic> _queryParameters(
    Map<String, dynamic>? requestQueryParameters,
  ) {
    final Map<String, dynamic> apiQueryParameters = {};
    if (requestQueryParameters != null) {
      apiQueryParameters.addAll(requestQueryParameters);
    }
    return apiQueryParameters;
  }

  String _path(String endpoint) {
    return '$_baseUrl$endpoint';
  }
}
