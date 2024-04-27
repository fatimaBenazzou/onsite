import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:onsite/Core/helpers/ApiServices.dart';
import 'package:onsite/Core/helpers/Failure.dart';
import 'package:onsite/Features/Auth/data/domain/SecondAuthRepo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.service) : super(AuthInitial());
  final ApiService service;
  final logger = Logger();
  Future<void> login(String email, String password) async {
    try {
      emit(AuthLoading());
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(AuthSuccess(credential.user!));
      logger.i('User logged in successfully');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        logger.t('The password provided is too weak.');
        emit(AuthFailed('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        logger.t('The account already exists for that email.');
        emit(AuthFailed('The account already exists for that email.'));
      }
    } catch (e) {
      logger.e(e);
      emit(AuthFailed('An error occurred, please try again later.'));
    }
  }

  Future<void> login2(String email, String password) async {
    try {
      emit(AuthLoading());
      final response = await SecondAuthRepo(service).login(email, password);
      SecondAuthRepo.persistData(response.data['token']);
      logger.i('User logged in successfully');
    } on HandleError catch (e) {
      logger.e(e);
      emit(AuthFailed(e.message));
    } catch (e) {
      logger.e(e);
      emit(AuthFailed('An error occurred, please try again later.'));
    }
  }
}
