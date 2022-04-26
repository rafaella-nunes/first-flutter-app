//import flutter package
import 'package:flutter/material.dart';

class App extends StatefulWidget{
  createState(){
    return AppState();
  }
}


//create a class that represents the State of the widget
class AppState extends State<App>{
  int counter = 0;
   //defines a build method that returns the widget
  Widget build(context){
      const mainColor = Color(0xFFE39EC1);
      const iconsColor = Color(0xFF77567A);
      const textColor = Color(0xFF2F323A);
    // create a new text widget 
    return MaterialApp(
        home: Scaffold(
          body: Text('$counter'),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                counter = counter + 1;
              });
            },
            backgroundColor: mainColor,
            child: const Icon(
              Icons.add,
              color: iconsColor),
              ),
          appBar: AppBar(
            title: const Text('Cat pics as you like!'),
            backgroundColor: mainColor,
            foregroundColor: textColor)
        ),
      );
  }
}

