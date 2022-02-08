import 'package:flutter/material.dart';
import 'package:sing_in/src/routes/routes.dart';

class SingIn extends StatelessWidget {
  final double fontSize;
  final TextDecoration underline;
  final FontWeight bold;
  const SingIn(
      {required this.underline,
      required this.bold,
      required this.fontSize,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(LOGIN);
      },
      child: Text(
        'Sign In',
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: bold,
          decoration: underline,
        ),
      ),
    );
  }
}
