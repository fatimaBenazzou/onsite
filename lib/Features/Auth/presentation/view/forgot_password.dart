import 'package:flutter/material.dart';
import 'package:onsite/Core/theme/AppTheme.dart';

import 'widgets/custom_button.dart';
import 'widgets/custom_textfield.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey1,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(
          'assets/images/LOGO.png',
          width: 135,
          height: 44,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Forgot Password? ',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(width: 8),
                  // Image.asset('assets/icons/$icon.png'),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Dont’ worry it happens. Please enter the adress associated with your account. ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Form(
                // key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 40),

                    // TextFields
                    //Email
                    CustomTextField(
                      labelText: 'Email',
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Email Adress.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    // buttons
                    CustomElevatedButton(
                      onPressed: () {
                        // if (_formKey.currentState?.validate() ?? false) {
                        // Validation successful, implement login functionality
                        // }
                      },
                      text: 'CONTINUE',
                      // textColor: ThemeConfig.buttonColor,
                      // buttonColor: ThemeConfig.primaryColor,
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
