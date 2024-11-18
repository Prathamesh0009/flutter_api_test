import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/signup_screen.dart';
import 'package:flutter_application_3/screens/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) { //build method returns a widge, it is called whenever we need to rebuild the screen i.e when the data changes
    return MaterialApp( //used as the root of the application and allows us to configure themes and routes
      title: 'Social',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: SignUp(),
    );
  }
}
