// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  final String content;

  Status({required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        content,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
