import 'package:valorant_app/services/http/http_response_interface.dart';

abstract class HttpInterface {
  Future<HttpResponseInterface> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  });

  Future<HttpResponseInterface> post(Map<String, dynamic> payload);
}
