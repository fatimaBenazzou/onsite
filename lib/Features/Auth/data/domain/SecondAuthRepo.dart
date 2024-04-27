import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:onsite/Core/helpers/ApiConstatts.dart';
import 'package:onsite/Core/helpers/ApiServices.dart';
import 'package:onsite/Core/helpers/DioHelper.dart';
import 'package:onsite/Features/Auth/data/domain/SecondAuthService.dart';

class SecondAuthRepo implements SecondAuthService {
  final ApiService apiService;
  SecondAuthRepo(this.apiService);
  static const _secureStorage = FlutterSecureStorage();

  @override
  Future<Response> login(String email, String password) async {
    final response = await apiService.post(
        endPoint: ApiConstants.login,
        data: {'email': email, 'password': password});
    return response;
  }

  static Future<void> persistData(token) async {
    await _secureStorage.write(key: 'x-auth-token', value: token);
  }

  static Future<String?> getToken() async {
    final token = await _secureStorage.read(key: 'x-auth-token');
    return token;
  }

  static Future<String?> get token async => await getToken();
}
