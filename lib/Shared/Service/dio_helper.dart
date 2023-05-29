import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();

  static getApiMethod(String url) async {
    try {
      final response = await dio.get('https://fakestoreapi.com/products$url');
      if ((response.statusCode ?? 0) >= 200 && (response.statusCode ?? 0) < 400) {
        return response.data;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      return e;
    }
  }
}
