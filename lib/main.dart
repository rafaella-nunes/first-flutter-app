// import the material file from flutter library
import 'package:flutter/material.dart';

//define a main function that runs when the application starts
void main(){
  //declares the AppBar color
  const mainColor = Color(0xFFE39EC1);
  const iconsColor = Color(0xFF77567A);
  const textColor = Color(0xFF2F323A);
  // create a new text widget 
  var app = MaterialApp(
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

  //take the widget and place it on the screen
  runApp(app);
}
