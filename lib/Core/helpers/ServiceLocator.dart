import 'package:get_it/get_it.dart';
import 'package:onsite/Core/helpers/ApiServices.dart';

class ServiceLocator {
  static final locator = GetIt.instance;
  static Future<void> setupLocator() async {
    locator.registerLazySingleton(() => ApiService());
 
  }
}