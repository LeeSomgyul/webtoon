import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url); //함수 내에서만 await사용 가능하다
    //awit사용 이유: .get이 future는 미래에 값을 반환한다는 의미. <response> 타입
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
  }
}
