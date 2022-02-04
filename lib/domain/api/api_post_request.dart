import 'package:dio/dio.dart';

class PostRequest {
  Future postData(
      {required int amount,
      required int maturity,
      int type = 0,
      int offerCount = 3}) async {
    var dio = Dio();
    dio.options.baseUrl = 'https://teklifimgelsin.com/api';
    final response = await dio.post('/briefLoanOffer', data: {
      'amount': amount,
      'maturity': maturity,
      "type": type,
      "offer_count": offerCount
    });

    return response.data;
  }
}
