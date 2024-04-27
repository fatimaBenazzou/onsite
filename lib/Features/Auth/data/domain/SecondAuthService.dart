import 'package:onsite/Core/index.dart';

abstract class SecondAuthService {

  Future<void> login(String email, String password );
}
