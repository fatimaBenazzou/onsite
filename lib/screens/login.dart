// final _firebase = FirebaseAuth.instance;

import 'package:flutter/material.dart';
import 'package:onsite/screens/forgot_password.dart';
import 'package:onsite/theme/app_theme.dart';
import 'package:onsite/widgets/custom_button.dart';
import 'package:onsite/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _form = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submit() async {
    // if (!isValid || !_isLogin && _selectedImage == null) {
    //   // show error message ...
    //   return;
    // }

    _form.currentState!.save();

    // try {
    //   setState(() {
    //     _isAuthenticating = true;
    //   });
    //   if (_isLogin) {
    // final userCredentials = await _firebase.signInWithEmailAndPassword(
    // email: _emailController.text, password: _passwordController.text);
    // } else {
    // final userCredentials = await _firebase.createUserWithEmailAndPassword(
    // email: _emailController.text, password: _passwordController.text);

    // final storageRef = FirebaseStorage.instance
    //     .ref()
    //     .child('user_images')
    //     .child('${userCredentials.user!.uid}.jpg');

    // await storageRef.putFile(_selectedImage!);
    // final imageUrl = await storageRef.getDownloadURL();

    // await FirebaseFirestore.instance
    // .collection('users')
    // .doc(userCredentials.user!.uid)
    // .set({
    // 'username': _userNameontroller.text,
    // 'email': _emailController.text,
    // 'image_url': imageUrl,
    // });
  }

  // Navigator.of(context).pushReplacement(
  //   MaterialPageRoute(
  //     builder: (context) => LayoutScreen(widget.cameras),
  //   ),
  // );
  // } on FirebaseAuthException catch (error) {
  //   if (error.code == 'email-already-in-use') {
  //     // ...
  //   }
  //   ScaffoldMessenger.of(context).clearSnackBars();
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text(error.message ?? 'Authentication failed.'),
  //     ),
  //   );
  //   setState(() {
  //     _isAuthenticating = false;
  //   });
  // }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'LOGIN',
                  style:
                      AppFonts.title1Bold.copyWith(color: AppColors.primary),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Access your Onsite account for streamlined project management like never before.',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: AppColors.typoColor),
            ),
            const SizedBox(height: 16),
            Form(
              key: _form,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),

                  CustomTextField(
                    labelText: 'Email Address',
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          value.trim().isEmpty ||
                          !value.contains('@')) {
                        return 'Please enter a valid email address.';
                      }
                      return null;
                    },
                    controller: _emailController,
                  ),
                  const SizedBox(height: 16),

                  CustomTextField(
                    labelText: 'Password',
                    isPassword: true,
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.trim().length < 6) {
                        return 'Password must be at least 6 characters long.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => ForgotPassword(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                        ),
                        child: Text(
                          'Forgot Password?',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // if (_isAuthenticating) ...[
                  //   const Center(
                  //     child: CircularProgressIndicator(),
                  //   ),
                  // ] else ...[
                  //   CustomElevatedButton(
                  //     onPressed: _submit,
                  //     text: _isLogin ? 'CONTINUE' : 'Signup',
                  //     textColor: ThemeConfig.buttonColor,
                  //     buttonColor: ThemeConfig.primaryColor,
                  //   ),
                  // ],
                  const SizedBox(height: 8),
                  CustomElevatedButton(
                    onPressed: _submit,
                    text: 'Login',
                    textColor: AppColors.bgColor,
                    buttonColor: AppColors.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
