import 'package:flutter/material.dart';

class AppStyles {
  // Text Styles
  static const TextStyle titleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 50,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subTitleTextStyle = TextStyle(
    color: Colors.orange,
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle profileNameStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle profileDescriptionStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  );

  // Container Styles
  static BoxDecoration cardDecoration = BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.black54,
        offset: Offset(0, 4),
        blurRadius: 8,
      ),
    ],
  );

  // Input Decoration
  static InputDecoration emailInputDecoration = InputDecoration(
    prefixIcon: Icon(Icons.email, color: Colors.white),
    filled: true,
    fillColor: Colors.black,
    hintText: 'Enter your email',
    hintStyle: TextStyle(color: Colors.white.withOpacity(0.75)),
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 1.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 1.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 1.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 1.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
  );

  static InputDecoration passwordInputDecoration = InputDecoration(
    prefixIcon: Icon(Icons.lock, color: Colors.white),
    filled: true,
    fillColor: Colors.black,
    hintText: 'Enter your password',
    hintStyle: TextStyle(color: Colors.white.withOpacity(0.75)),
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 1.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 1.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 1.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 1.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
  );

  // Button Styles
  static ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.orange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
    textStyle: TextStyle(color: Colors.white),
  );
}
