import 'package:flutter/material.dart';

class WidgetTextField extends StatelessWidget {
  final String type;
  bool obscure;
  final String message;
  String? validator;
  WidgetTextField({
    this.obscure = false,
    this.validator = '',
    required this.message,
    required this.type,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty || !value.contains('$validator')) {
          return message;
        }
        return null;
      },
      obscureText: obscure,
      decoration: InputDecoration(
        label: Text(
          type,
          style: const TextStyle(
            color: Color(0xFF1E1E1E),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF1E1E1E),
          ),
        ),
      ),
    );
  }
}
