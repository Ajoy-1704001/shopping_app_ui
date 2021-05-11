import 'package:flutter/material.dart';
import 'package:shopping_app_ui/myTheme.dart';

class CartItem extends StatefulWidget {
  CartItem({this.img, this.name, this.price});
  final String img;
  final String name;
  final String price;
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            width: 150,
            height: 150,
            child: ClipRect(
              clipBehavior: Clip.hardEdge,
              child: Image.asset("assets/images/" + widget.img + ".jpg"),
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(widget.name, style: TextStyle(fontSize: 16))),
              Text(
                widget.price,
                style: TextStyle(color: MyTheme.primary, fontSize: 16),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade300,
                ),
                height: 30,
                child: Row(
                  children: [
                    IconButton(
                        iconSize: 17,
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            num = num + 1;
                          });
                        }),
                    Text('$num'),
                    IconButton(
                        iconSize: 17,
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          if (num > 0) {
                            setState(() {
                              num = num - 1;
                            });
                          }
                        })
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
