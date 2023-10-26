import 'package:flutter/material.dart';
import 'package:midtermproj/routes.dart';

class Home extends StatefulWidget {
  static const String routeName = "Home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HOME"),
        backgroundColor: Color.fromRGBO(102, 13, 13, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings), 
            onPressed: () {

            },
          ),
        ],
      ),
    );
  }
}
