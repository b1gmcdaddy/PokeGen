import 'package:flutter/material.dart';

class LoginFormField extends StatelessWidget {
  final String labelText;
  final IconData iconData;
  final TextInputType textInputType;

  const LoginFormField({
    required this.labelText,
    required this.iconData,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Icon(iconData, color: Color.fromRGBO(102, 13, 13, 1),),
        ),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(const Radius.circular(10.0)),
        ),
      ),
    );
  }
}

