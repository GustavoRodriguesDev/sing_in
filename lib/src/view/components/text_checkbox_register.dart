import 'package:flutter/material.dart';

class TextCheckBox extends StatelessWidget {
  const TextCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'I agree to the ',
          style: TextStyle(fontSize: 13),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Terms of Service ',
            style: TextStyle(color: Colors.blueGrey, fontSize: 13),
          ),
        ),
        const Text(
          'and ',
          style: TextStyle(fontSize: 13),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Privacy Policy',
            style: TextStyle(color: Colors.blueGrey, fontSize: 13),
          ),
        ),
      ],
    );
  }
}
