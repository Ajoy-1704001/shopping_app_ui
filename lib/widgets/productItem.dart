import 'package:flutter/material.dart';
import 'package:shopping_app_ui/myTheme.dart';
import 'package:shopping_app_ui/screens/product.dart';

class ProductItem extends StatelessWidget {
  ProductItem(this.img, this.name, this.brand, this.price);
  final String img;
  final String name;
  final String brand;
  final String price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 1000),
                pageBuilder: (_, __, ___) => ProductScreen(
                      img: img,
                      productName: name,
                    )));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: ClipRect(
              clipBehavior: Clip.hardEdge,
              child: Hero(
                tag: name,
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 16),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            brand,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            price,
            style: TextStyle(color: MyTheme.primary, fontSize: 16),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
