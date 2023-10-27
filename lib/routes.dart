import 'package:flutter/material.dart';
import 'screens/Login.dart';
import 'screens/Home.dart';
import 'screens/Settings.dart';

final Map<String, WidgetBuilder> routes = {
  Login.routeName: (BuildContext context) => Login(),
  Home.routeName: (BuildContext context) => Home(),
  Settings.routeName: (BuildContext context) => Settings(),
};
