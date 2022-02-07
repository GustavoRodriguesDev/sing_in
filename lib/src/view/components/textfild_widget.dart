import 'package:flutter/material.dart';

class WidgetTextFild extends StatelessWidget {
  final String type;
  const WidgetTextFild({required this.type, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(type)),
    );
  }
}
