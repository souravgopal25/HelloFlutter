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
        child: Center(child: Text("GREAT")),
      ),
    );
  }

}