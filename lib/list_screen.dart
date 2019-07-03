import 'package:flutter/material.dart';
import 'package:nisrulz_examples/ScreenData.dart';

import 'screens/simple_material_app_screen.dart';
import 'screens/using_theme.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listOfScreenData = <ScreenData>[
      ScreenData(SimpleMaterialAppScreen.title, SimpleMaterialAppScreen.route),
      ScreenData(UsingThemeScreen.title , UsingThemeScreen.route)
    ];

    return Scaffold(
        body: ListView.builder(
      itemCount: listOfScreenData.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, listOfScreenData[index].route);    
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  listOfScreenData[index].title)
                ),
            ),                                    
          ),
        );        
      },
    ));
  }
}
