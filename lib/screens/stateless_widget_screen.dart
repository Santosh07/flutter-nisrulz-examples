import 'package:flutter/material.dart';

class StateLessWidgetScreen extends StatelessWidget {
  static const title = "StateLess Widget";
  static const route = "/statelessWidget";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          MyCard(name: "Favorite", iconData: Icons.favorite, iconColor: Colors.red,),
          MyCard(name: "Alarm", iconData: Icons.alarm, iconColor: Colors.blue),
          MyCard(name: "Airport Shuttle", iconData: Icons.airport_shuttle, iconColor: Colors.yellow),
          MyCard(name: "Done", iconData: Icons.done, iconColor: Colors.green)
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String name;
  final IconData iconData;
  final Color iconColor;

  MyCard({this.name, this.iconData, @required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(name,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey
                  )
              ), 
              Icon(iconData, 
                color: iconColor,
                size: 36,
              )
            ],
          ),
        ),
      ),
    );
  }
}
