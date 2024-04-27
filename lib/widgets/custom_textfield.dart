import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final bool isPassword;
  final TextEditingController? controller;
  // final FormFieldValidator<String>? validator;

  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: widget.controller,
      obscureText: _obscureText && widget.isPassword,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: Theme.of(context).textTheme.bodySmall,
        filled: true, // Remplir avec une couleur de fond
        fillColor: Colors.white, // Couleur de fond blanche
        border: OutlineInputBorder(
          // Bordure avec coins arrondis
          borderRadius: BorderRadius.circular(12.0), // Rayon des coins
          borderSide: BorderSide.none, // Pas de bordure
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
        prefixIcon: Icon(
            widget.isPassword ? CupertinoIcons.lock : CupertinoIcons.envelope),
      ),
      validator: widget.validator,
      keyboardType: widget.keyboardType,
    );
  }
}