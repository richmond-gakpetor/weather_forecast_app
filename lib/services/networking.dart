import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkRequest {
  NetworkRequest({required this.url});

  final String url;

  Future getData() async {
    var urlAddress = Uri.parse(url);
    http.Response response = await http.get(urlAddress);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
       print(response.statusCode);
    }
  }
}


 

