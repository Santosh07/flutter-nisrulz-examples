import 'package:flutter/material.dart';

class SimpleMaterialAppScreen extends StatelessWidget {
  static const String route = "/simpleMaterialAppScreen";
  static const String title = "Simple Material App";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),                        
      ),
      body: Center(
        child: Text("Hello, Nisrulz"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add)
      ),
    );
  }
}