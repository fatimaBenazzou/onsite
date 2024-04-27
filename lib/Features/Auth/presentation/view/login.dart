// final _firebase = FirebaseAuth.instance;

import 'package:flutter/material.dart';
import 'package:onsite/Core/index.dart';
import 'package:onsite/Core/theme/AppTheme.dart';
import 'package:onsite/Features/Auth/presentation/view-model/cubit/auth_cubit.dart';
import 'package:onsite/Features/Auth/presentation/view/forgot_password.dart';

import 'widgets/custom_button.dart';
import 'widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _form = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background),
                          ),
                        ),
                      ],
                    ),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        if (state is AuthFailed) {
                          return Text(
                            state.message,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.red),
                          );
                        } else if (state is AuthLoading) {
                          return const CircularProgressIndicator();
                        }
                        return CustomElevatedButton(
                          onPressed: () {
                            context
                                .read<AuthCubit>()
                                .login(_emailController.text,
                                    _passwordController.text)
                                .then((value) => Navigator.of(context)
                                    .pushReplacementNamed('layout'));
                          },
                          text: 'Login',
                          textColor: Theme.of(context).colorScheme.background,
                          buttonColor: Theme.of(context).colorScheme.primary,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
