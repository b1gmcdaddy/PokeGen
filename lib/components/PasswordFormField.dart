import 'package:flutter/material.dart';

class PasswordFormField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final VoidCallback onTap;

  PasswordFormField(
      {super.key,
      required this.labelText,
      required this.obscureText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
          prefix: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: const Icon(Icons.lock),
          ),
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: Icon(obscureText ? Icons.visibility_off : Icons.visibility,
            color: Color.fromRGBO(102, 13, 13, 1)),
          ),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.black),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)))),
    );
  }
}
