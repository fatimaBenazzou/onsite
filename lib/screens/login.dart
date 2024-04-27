// final _firebase = FirebaseAuth.instance;

import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/screens/forgot_password.dart';
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
    _form.currentState!.save();

  }

 

  @override
  Widget build(BuildContext context) {
    return Padding(
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
             verticalbox(16),
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
