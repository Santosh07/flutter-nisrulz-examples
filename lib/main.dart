import 'package:flutter/material.dart';
import 'package:nisrulz_examples/list_screen.dart';
import 'package:nisrulz_examples/screens/using_theme.dart';

import 'screens/simple_material_app_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "Nisrulz Flutter",
    home: ListScreen(),
    theme: ThemeData(
      primaryColor: Colors.green,
      accentColor: Colors.pink,            
    ),
    initialRoute: "/",
    routes: {
      SimpleMaterialAppScreen.route : (context) => SimpleMaterialAppScreen(),
      UsingThemeScreen.route: (context) => UsingThemeScreen()   
    },
  ));
}