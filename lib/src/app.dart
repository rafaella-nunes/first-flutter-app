//import flutter package
import 'package:flutter/material.dart';


//create a class that will be the custom widget, this class extends the StatelessWidget class
class App extends StatelessWidget{
   //defines a build method that returns the widget
  Widget build(context){
    
      const mainColor = Color(0xFFE39EC1);
      const iconsColor = Color(0xFF77567A);
      const textColor = Color(0xFF2F323A);
    // create a new text widget 
    return MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              print('just testing things out!');
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

