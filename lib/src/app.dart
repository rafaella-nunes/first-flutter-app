//import flutter and http package
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' show get;

class App extends StatefulWidget{
  createState(){
    return AppState();
  }
}


//create a class that represents the State of the widget
class AppState extends State<App>{
  int counter = 0;

  void fetchImage(){
    counter++;
    var url = Uri.https('jsonplaceholder.typicode.com', '/photos/$counter');
    get(url);
  }


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
              fetchImage;
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

