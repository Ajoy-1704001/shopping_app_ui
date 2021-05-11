import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  Heading(this.head);
  final String head;
  @override
  Widget build(BuildContext context) {
    return Text(
      head,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}
