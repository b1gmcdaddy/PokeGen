import 'package:flutter/material.dart';
import 'package:midtermproj/screens/Home.dart';
import '/components/LoginFormField.dart';
import '/components/PasswordFormField.dart';
import '/components/LoginButton.dart';
import 'package:midtermproj/routes.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
          child: SingleChildScrollView(
            child: Column(children: [
              const Text(
                "Login to your account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(
                  height: 20.0,
                ),
                 const LoginFormField(
                    labelText: "Email",
                    iconData: Icons.email,
                    textInputType: TextInputType.emailAddress),
                const SizedBox(
                  height: 20.0,
                ),
                PasswordFormField(
                    labelText: "Password",
                    obscureText: obscureText,
                    onTap: setPasswordVisibility,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                LoginButton(
                    text: "LOGIN", onPressed: login),
                const SizedBox(
                  height: 20.0,
                ),
                Image(
                  image: AssetImage('assets/loginimg.png')
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void login() {
    Navigator.pushReplacementNamed(context, Home.routeName);
  }

  void setPasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
