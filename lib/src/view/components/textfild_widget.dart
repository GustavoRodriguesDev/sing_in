import 'package:flutter/material.dart';

class WidgetTextField extends StatelessWidget {
  final String type;

  final String message;
  String? validator;
  WidgetTextField({
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
      decoration: InputDecoration(
        label: Text(type),
      ),
    );
  }
}
