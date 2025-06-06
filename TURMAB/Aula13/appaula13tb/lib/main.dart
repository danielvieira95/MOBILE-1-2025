import 'package:appaula13tb/home.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(TelaApp());
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          )
        )
      ),
      home: AnimatedSplashScreen(
        duration: 3000, // duração em ms
        splash: Icons.home, // poderia ser imagem
        splashIconSize: 200, // tamanho do icone
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        nextScreen:Home(), // tela home,
        backgroundColor: Colors.red,
      ),
    );
  }
}