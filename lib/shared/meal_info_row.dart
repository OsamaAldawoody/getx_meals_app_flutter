import 'package:flutter/material.dart';

class MealInfoRow extends StatelessWidget {
  final IconData icon;
  final String info;
  MealInfoRow({this.icon, this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 8,
          ),
          Text('$info min')
        ],
      ),
    );
  }
}
