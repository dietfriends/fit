import 'package:http/http.dart' as http;

class GoogleAuthClient extends http.BaseClient {
  Map<String, String> headers;
  final http.Client _client = new http.Client();

  GoogleAuthClient([this.headers]) : super();

  Future<http.StreamedResponse> send(http.BaseRequest request) {
    return _client.send(request..headers.addAll(headers ?? {}));
  }
}
