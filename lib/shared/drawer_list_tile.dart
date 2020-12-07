import 'package:flutter/material.dart';

import 'app_text.dart';

class DrawerListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onTap;
  const DrawerListTile({this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AppText(
        text,
        fontWeight: FontWeight.bold,
      ),
      leading: Icon(icon, size: 25),
      onTap: onTap,
    );
  }
}
