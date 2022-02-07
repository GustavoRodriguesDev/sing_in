import 'package:flutter/material.dart';

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
      onTap: () {},
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
