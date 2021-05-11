import 'package:flutter/material.dart';
import 'package:shopping_app_ui/myTheme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyTheme.background,
      elevation: 0,
      title: TextField(
        cursorColor: MyTheme.secondary,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          prefixIcon: Icon(
            Icons.search_outlined,
            size: 24,
          ),
          fillColor: MyTheme.secondarySub,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none),
        ),
      ),
      actions: [
        IconButton(
            iconSize: 40,
            icon: Image.asset(
              'assets/images/Search_Camera.png',
            ),
            onPressed: () {})
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 10);
}
