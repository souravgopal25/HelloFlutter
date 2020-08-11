import 'package:flutter/cupertino.dart';
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
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                )
              ],
            ),
        ),
      )

    );
  }

}