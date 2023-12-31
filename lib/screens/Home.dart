import 'package:flutter/material.dart';
import 'package:midtermproj/screens/Settings.dart';
import 'package:midtermproj/screens/Page2Info.dart';
import 'package:midtermproj/screens/Page3Profile.dart';
import 'package:midtermproj/screens/Dashboard.dart';

class Home extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;
  final List<Widget> _pages = [Dashboard(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HOME"),
        backgroundColor: const Color.fromRGBO(102, 13, 13, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: goToSettings,
          ),
        ],
      ),
      body: _pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: "Stats"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: "Profile"),
        ],
        selectedItemColor: const Color.fromRGBO(102, 13, 13, 1),
        currentIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }

  void goToSettings() {
    Navigator.pushNamed(context, Settings.routeName);
  }
}
