import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
          child: Text('This is the homepage',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
            ),
        ),
      ),
    );
  }
}