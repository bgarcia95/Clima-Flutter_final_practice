import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final url;

  NetworkHelper({this.url});

  Future<void> getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      try {
        print(response.body);
        return jsonDecode(response.body);
      } catch (e) {
        print(e);
      }
    }
  }
}
