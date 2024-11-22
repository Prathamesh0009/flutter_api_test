import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/styles.dart';
import 'package:flutter_application_3/screens/welcome_screen.dart';


class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Map<String, dynamic> profileDetails = {};

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: AppStyles.cardDecoration.copyWith(
        gradient: const LinearGradient(colors: [Colors.blue, Colors.green]),
      ),
      child: ElevatedButton(
        style: AppStyles.raisedButtonStyle.copyWith(
          elevation: MaterialStateProperty.all(10),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 75, vertical: 15),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Welcome()),
          );
        },
        child: const Text(
          'Create Account',
          style: AppStyles.profileNameStyle,
        ),
      ),
    );
  }
}
