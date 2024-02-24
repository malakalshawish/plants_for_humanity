import 'package:flutter/material.dart';
import 'package:herbs_for_gaza/pages/welcome_page.dart';
import 'package:herbs_for_gaza/pages/about_us.dart';
import 'package:herbs_for_gaza/pages/home.dart';
import 'package:herbs_for_gaza/pages/welcome_page.dart';
import 'herbs_for_gaza/pages/olive_tree.dart';

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants for Humanity',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      routes: {
    //'/olive': (context) => OliveTree(),
    //'/citrus': (context) => CitrusFruit(),
    //'/pomegranate': (context) => Pomegranate(),
    //'/bougainvillea': (context) => Bougainvillea(),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
  
  Bougainvillea() {}
  
  CitrusFruit() {}
  
  
}


