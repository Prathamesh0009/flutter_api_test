import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/styles.dart';

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
        style: AppStyles.profileDescriptionStyle.copyWith(fontSize: 14),
        decoration: AppStyles.passwordInputDecoration.copyWith(
          suffixIcon: InkWell(
            onTap: () => setState(() => pwdVisibility = !pwdVisibility),
            child: Icon(
              pwdVisibility
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
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
