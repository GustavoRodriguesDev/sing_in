import 'package:flutter/material.dart';

class LogoFtean extends StatelessWidget {
  const LogoFtean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Image.asset(
          'assets/logo/ftean.png',
          height: 200,
        ),
      ),
    );
  }
}
