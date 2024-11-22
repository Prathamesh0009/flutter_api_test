import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/styles.dart';


class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: AppStyles.profileDescriptionStyle.copyWith(fontSize: 14),
        decoration: AppStyles.emailInputDecoration,
      ),
    );
  }
}
