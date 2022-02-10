import 'package:flutter/material.dart';
import 'package:sing_in/src/routes/routes.dart';

class SignUp extends StatelessWidget {
  final double fontSize;
  final TextDecoration underline;
  final FontWeight bold;

  const SignUp(
      {Key? key,
      required this.fontSize,
      required this.underline,
      required this.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(REGISTER);
      },
      child: Text(
        'Sing Up',
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: bold,
          decoration: underline,
        ),
      ),
    );
  }
}
