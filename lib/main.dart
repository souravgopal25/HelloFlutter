import 'package:flutter/material.dart';

import 'HomePage.dart';

void main(){
  runApp(MaterialApp(
    title: "Hello Flutter",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.cyan
    ),
  ));

}

