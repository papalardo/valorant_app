abstract class HttpResponseInterface {
  int statusCode();
  String body();
  dynamic json();
}