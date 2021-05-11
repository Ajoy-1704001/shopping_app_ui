import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  final IconData icon;
  final String title;

  AccountTile({Key key, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        leading: Container(
          child: Icon(
            icon,
            size: 20,
          ),
          width: 35,
          height: 35,
          color: Colors.green.shade50,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          ),
        ),
      ),
    );
  }
}
