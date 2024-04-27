import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
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
}
