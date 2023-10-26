import 'package:flutter/material.dart';
import '/components/LoginFormField.dart';
import '/components/PasswordFormField.dart';

class Login extends StatefulWidget {
  static const String routeName = "login";
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                  height: 20.0,
                ),
                const LoginFormField(
                    labelText: "Email",
                    hintText: "Enter a valid email",
                    iconData: Icons.email,
                    textInputType: TextInputType.emailAddress),
                const SizedBox(
                  height: 20.0,
                ),
                PasswordFormField(
                    labelText: "Password",
                    hintText: "Enter your password",
                    obscureText: obscureText,
                    onTap: setPasswordVisibility,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



  void setPasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
