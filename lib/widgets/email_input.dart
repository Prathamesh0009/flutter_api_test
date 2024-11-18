import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(color: Colors.white, fontSize: 14),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email, color: Colors.white),
          filled: true,
          fillColor: Colors.black,
          hintText: 'Enter your email',
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.75),
          ),
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
        ),
      ),
    );
  }
}
