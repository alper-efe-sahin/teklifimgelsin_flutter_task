import 'dart:convert';
import 'package:http/http.dart' as http;

class PostRequest {
  Future postData() async {
    var url = Uri.parse('https://teklifimgelsin.com/api/briefLoanOffer');

    final Map<String, int> body = {
      'amount': 20000,
      'maturity': 36,
      "type": 0,
      "offer_count": 3
    };

    await http.post(url, body: jsonEncode(body), headers: {
      "Content-Type": "application/json",
    }).then((value) => print(value.statusCode));
  }
}
