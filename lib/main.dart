import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: "Hello Flutter",
    home: HomePage(),
  ));

}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Hello Flutter"),
      ),
      body: Container(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            width:100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: Colors.grey[400],
                  blurRadius: 5,
                  offset: Offset(2.0,10.0),
                )],
                color: Colors.teal,
                gradient:LinearGradient(colors: [Colors.green,Colors.teal]) ),
            child: Text("I am a Box",
            textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        )
      ),
    );
  }

}