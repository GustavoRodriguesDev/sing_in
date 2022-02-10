import 'package:flutter/material.dart';

class WidgetCheckBox extends StatefulWidget {
  bool check;
  WidgetCheckBox({required this.check, Key? key}) : super(key: key);

  @override
  State<WidgetCheckBox> createState() => _WidgetCheckBoxState();
}

class _WidgetCheckBoxState extends State<WidgetCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
            child: AnimatedContainer(
              duration: Duration(milliseconds: 150),
              height: 11,
              width: 11,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.check == true
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
    );
  }
}
