import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/styles.dart';
import 'package:flutter_application_3/widgets/button.dart';
import 'package:flutter_application_3/widgets/email_input.dart';
import 'package:flutter_application_3/widgets/password_input.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue,
              Colors.blueGrey,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Material(
                elevation: 10,
                shadowColor: Colors.black,
                borderRadius: AppStyles.cardDecoration.borderRadius,
                color: AppStyles.cardDecoration.color,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 350,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 15.0,
                    ),
                    decoration: AppStyles.cardDecoration,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Get Started',
                                style: AppStyles.titleTextStyle,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Create your Account',
                                style: AppStyles.subTitleTextStyle,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 7.0),
                          child: EmailInput(),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 7.0),
                          child: PasswordInput(),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 7.0),
                          child: Button(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
