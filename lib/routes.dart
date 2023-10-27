import 'package:flutter/material.dart';
import 'package:midtermproj/screens/Dashboard.dart';
import 'screens/Login.dart';
import 'screens/Home.dart';
import 'screens/Settings.dart';
import 'screens/Details.dart';


final Map<String, WidgetBuilder> routes = {
  Login.routeName: (BuildContext context) => Login(),
  Home.routeName: (BuildContext context) => Home(),
  Settings.routeName: (BuildContext context) => Settings(),
  Details.routeName: (BuildContext context) {
    final gaLibogNako = ModalRoute.of(context)!.settings.arguments as PokemonGeneration;
     return Details(generation: gaLibogNako);
  },
};
