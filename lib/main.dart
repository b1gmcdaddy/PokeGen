import 'package:flutter/material.dart';
import 'screens/Login.dart';
import 'package:midtermproj/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: routes, 
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(102, 13, 13, 1)),  
          ),
        )
      ),
    );
  }
}
