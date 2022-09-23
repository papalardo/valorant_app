import 'package:dio/dio.dart';
import 'package:valorant_app/services/http/http_inferface.dart';
import 'package:valorant_app/services/http/http_response_interface.dart';
import 'package:valorant_app/services/http/shared/http_response.dart';
import 'package:dio_logger/dio_logger.dart';

class HttpDio extends HttpInterface {
  late Dio _client;

  String baseUrl;

  HttpDio({
    this.baseUrl = '',
  }) {
    _client = Dio(BaseOptions(
      baseUrl: baseUrl,

    ));
    _client.interceptors.add(dioLoggerInterceptor);
  }

  @override
  Future<HttpResponseInterface> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    Response<String> response = await _client.get(
      url,
      queryParameters: queryParameters,
    );

    return HttpResponse(
      statusCode: response.statusCode ?? 0,
      body: response.data ?? '',
    );
  }

  @override
  Future<HttpResponseInterface> post(Map<String, dynamic> payload) {
    // TODO: implement post
    throw UnimplementedError();
  }
}
