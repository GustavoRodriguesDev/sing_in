import 'package:flutter/material.dart';

class BottonCircle extends StatelessWidget {
  final Function() navigation;
  const BottonCircle({required this.navigation, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigation,
      child: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF1E1E1E),
        ),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
