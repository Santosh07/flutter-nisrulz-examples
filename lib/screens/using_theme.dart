import 'package:flutter/material.dart';

class UsingThemeScreen extends StatelessWidget {
  static const String title = "Using Theme";
  static const String route = "/usingTheme";

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            primaryColor: Colors.red,
            accentColor: Colors.grey,
            colorScheme:
                Theme.of(context).colorScheme.copyWith(
                  secondary: Colors.grey)),
        child: Scaffold(
          appBar: AppBar(title: Text(UsingThemeScreen.title)),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          ),
        ));
  }
}
