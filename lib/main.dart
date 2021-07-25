import 'package:flutter/material.dart';
import 'package:mywebflut/contact.dart';
import 'package:mywebflut/home_screen.dart';
import 'package:mywebflut/schFinderPage.dart';
import 'package:mywebflut/underConstruction.dart';
import 'package:mywebflut/work_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //'/': (context) => HomeScreen(),
        '/projects': (context) => Work(),
        '/projects/schfinder': (context) => schFinderPage(),
        '/contact': (context) => Contact(),
        '/underConstruction' : (context) => Construction(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Ying Sheng',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

