import 'package:onsite/Core/index.dart';

class ApiService {
  ApiService();

  Future<Response> get(
      {required String endPoint, Map<String, dynamic>? query}) async {
    final response = await DioHelper.getData(url: endPoint);
    return response;
  }
    Future<Response> post(
      {required String endPoint, Map<String, dynamic>? data}) async {
    final response = await DioHelper.postData(url: endPoint,data: data!);
    return response;
  }
}