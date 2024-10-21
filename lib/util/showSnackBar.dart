import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text, {bool success = true}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: success ? Colors.greenAccent : Colors.redAccent,
    ),
  );
}
