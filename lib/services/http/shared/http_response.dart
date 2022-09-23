import 'dart:convert';

import 'package:valorant_app/services/http/http_response_interface.dart';

class HttpResponse extends HttpResponseInterface {
  late final int _statusCode;
  late final String _body;

  HttpResponse({
    required int statusCode,
    required String body,
  }) {
    _body = body;
    _statusCode = statusCode;
  }

  @override
  String body() => _body;

  @override
  dynamic json() {
    try {
      return jsonDecode(_body);
    } on FormatException catch (_) {
      return null;
    }
  }

  @override
  int statusCode() => _statusCode;
}