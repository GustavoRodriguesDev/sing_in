import 'package:flutter/material.dart';

class WidgetCheckBox extends StatefulWidget {
  const WidgetCheckBox({Key? key}) : super(key: key);

  @override
  State<WidgetCheckBox> createState() => _WidgetCheckBoxState();
}

class _WidgetCheckBoxState extends State<WidgetCheckBox> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        check = !check;
        setState(() {});
      },
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF1E1E1E),
            ),
            child: Container(
              height: 15,
              width: 15,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFEAEAEA),
              ),
              child: Container(
                height: 11,
                width: 11,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: check == true
                      ? const Color(0xFF1E1E1E)
                      : const Color(0xFFEAEAEA),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
