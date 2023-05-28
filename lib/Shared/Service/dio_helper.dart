import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();

  getApiMethod(String url) async {
    try {
      final response = await dio.get(url);
      if ((response.statusCode ?? 0) >= 200 && (response.statusCode ?? 0) < 400) {
        print('API response body : ${response.data}');
        return response.data;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      return e;
    }
  }
}
