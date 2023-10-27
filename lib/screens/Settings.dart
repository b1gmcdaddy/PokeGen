import 'package:flutter/material.dart';
import 'package:midtermproj/screens/Login.dart';

class Settings extends StatelessWidget {
  static const String routeName = "Settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SETTINGS"),
        backgroundColor: Color.fromRGBO(102, 13, 13, 1),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top:20.0),
              children: <Widget>[
                _buildSettingsItem("PokeMaster Mode", Icons.person_2, false),
                _buildSettingsItem("Invisible Mode", Icons.visibility_off_rounded, false),
                ListTile(
                  leading: Icon(Icons.settings_suggest),
                  title: Text("Advanced Options"),
                  trailing: Icon(Icons.keyboard_arrow_right), // Right arrow icon
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 50.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Login.routeName);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  backgroundColor: const Color.fromRGBO(102, 13, 13, 1),
                ),
                child: const Text(
                  "LOG OUT",
                  style: TextStyle(fontSize: 17.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsItem(String title, IconData icon, bool isEnabled) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Switch(
        value: isEnabled,
        onChanged: (v) {
        },
      ),
    );
  }
}
