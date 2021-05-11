import 'package:flutter/material.dart';
import 'package:shopping_app_ui/myTheme.dart';
import 'package:shopping_app_ui/widgets/cartItem.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              buildCart(),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: ListTile(
            title: Text(
              "Total",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
            ),
            subtitle: Text(
              "\$4500",
              style: TextStyle(
                  fontSize: 17,
                  color: MyTheme.primary,
                  fontWeight: FontWeight.bold),
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyTheme.primary)),
              child: Text("CHECKOUT"),
            ),
          ),
        ),
      ),
    );
  }

  buildCart() {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        CartItem(
          img: "p1",
          name: "Tag Heuer Wristwatch",
          price: "\$1100",
        ),
        CartItem(
          img: "p2",
          name: "BeoPlay Speaker",
          price: "\$3500",
        ),
        CartItem(
          img: "p3",
          name: "Electric Kettle",
          price: "\$100",
        ),
        CartItem(
          img: "p4",
          name: "Electric Kettle",
          price: "\$100",
        ),
        CartItem(
          img: "p5",
          name: "BeoPlay Speaker",
          price: "\$3500",
        ),
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
