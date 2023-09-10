import 'package:flutter/material.dart';
import 'package:spotify_app/constants.dart';

class MyCustomTextField extends StatelessWidget {
  const MyCustomTextField({
    super.key,
    this.prefixIcon,
    required this.hintText,
    this.password = false,
  });

  final Icon? prefixIcon;
  final String hintText;
  final bool password;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: cTextField,
      obscureText: password,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 33, horizontal: 24),
        hintText: hintText,
        hintStyle: const TextStyle(color: cTextField),
        prefixIcon: prefixIcon,
        prefixIconColor: cTextField,
        filled: true,
        fillColor: cBackgroundColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: cTextField,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
