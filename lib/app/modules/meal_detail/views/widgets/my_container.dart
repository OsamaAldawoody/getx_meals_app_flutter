import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget child;
  MyContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      height: 200,
      width: 300,
      child: child,
    );
  }
}
