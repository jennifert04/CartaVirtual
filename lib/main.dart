import 'package:flutter/material.dart';
import 'package:flutter_application_1/vistas/welcomePage.dart';
import 'package:flutter_application_1/vistas/welcomePageM.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 238, 141, 181),
        body: WelcomePageM(),
      ),
    );
  }
}

