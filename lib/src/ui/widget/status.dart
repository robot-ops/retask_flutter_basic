import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  final String content;

  const Status({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        content,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
