import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future<Object> getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String respData = response.body;
      print(respData);
      return jsonDecode(respData);
    } else {
      String msg = response.statusCode.toString();
      throw new Exception('예상치 못한 오류가 발생되었습니다.\n 오류코드 : $msg \n 요청URL : $url');
    }
  }
}
