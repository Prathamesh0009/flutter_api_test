import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/signup_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social', 
      debugShowCheckedModeBanner: false, // Hides the debug banner for production
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const SignUp(), // The default entry screen of the application
    );
  }
}
