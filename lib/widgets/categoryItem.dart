import 'package:flutter/material.dart';
import 'package:shopping_app_ui/myTheme.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem(this.img, this.title);

  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7, top: 10),
      child: Column(
        children: [
          Card(
            shape: CircleBorder(),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: MyTheme.background,
              child: Image.asset(
                img,
                height: 30,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(title),
        ],
      ),
    );
  }
}
