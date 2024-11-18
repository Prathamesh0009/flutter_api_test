import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool pwdVisibility = false; 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        obscureText: !pwdVisibility,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock, color: Colors.white),
          filled: true,
          fillColor: Colors.black,
          hintText: 'Enter your password',
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
      ).copyWith(
          suffixIcon: InkWell(  //InkWell: Wraps the icon with a tap effect. When tapped, it changes the pwdVisibility variable using setState, triggering a re-render with updated visibility.
            onTap: () => setState(() => pwdVisibility = !pwdVisibility),
            child: Icon(
              pwdVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              color: Colors.white.withOpacity(0.75),
              size: 18,
            ),
          ),
        ),
        validator: (val) {
          if (val!.isEmpty) {
            return 'Required';
          }
          return null;
        },
    ),
    );
  }
}