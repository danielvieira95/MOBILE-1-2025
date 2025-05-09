import 'package:appaula14ta/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white, // cor de fundo do scaffold
      primaryColor: Colors.white,
      primarySwatch: Colors.red,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white
        )
      )
    ),
    home: Login(),
  ));
}

