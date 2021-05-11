import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_ui/myTheme.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app_ui/widgets/reviewTile.dart';

class ProductScreen extends StatefulWidget {
  final String img;
  final String productName;

  const ProductScreen({Key key, this.img, this.productName}) : super(key: key);
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListTile(
            title: Text(
              "Price",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
            ),
            subtitle: Text(
              "\$1500",
              style: TextStyle(
                  fontSize: 17,
                  color: MyTheme.primary,
                  fontWeight: FontWeight.bold),
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyTheme.primary),
                  minimumSize: MaterialStateProperty.all(Size(140, 40))),
              child: Text(
                "ADD",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Padding(
              padding: const EdgeInsets.all(20.0),
              child: IconButton(
                splashRadius: 30,
                iconSize: 40,
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 18,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            floating: true,
            backgroundColor: Color(0x00000000),
            actions: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: IconButton(
                    icon: CircleAvatar(
                      child: Icon(
                        Icons.star_border,
                        color: Colors.black,
                      ),
                      backgroundColor: MyTheme.background,
                    ),
                    //color: MyTheme.background,
                    onPressed: () {}),
              ),
            ],
            expandedHeight: MediaQuery.of(context).size.height * 0.6,
            flexibleSpace: Hero(
              tag: widget.productName,
              child: Image.asset(
                widget.img,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                //mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("Size"),
                                  Text(
                                    "XL",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade300)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                //mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("Colour"),
                                  Icon(
                                    Icons.stop,
                                    color: Colors.blue.shade900,
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Details",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    child: Text(
                      "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer. Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer. Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer. Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.",
                      maxLines: isExpand ? 20 : 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isExpand) {
                          isExpand = false;
                        } else {
                          isExpand = true;
                        }
                        print(isExpand);
                      });
                    },
                    child: Text(
                      isExpand ? "Read Less" : "Read More",
                      style: TextStyle(color: MyTheme.primary),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Reviews",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Write your",
                      style: TextStyle(color: MyTheme.primary),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Reviews(
                    img: "avatar1",
                    name: "Samuel Smith",
                    rating: 4,
                    review:
                        "Wonderful jean, perfect gift for my girl for our anniversary!, Wonderful jean, perfect gift for my girl for our anniversary!",
                  ),
                  Reviews(
                    img: "avatar2",
                    name: "Beth Aida",
                    rating: 3.5,
                  ),
                  Reviews(
                    img: "avatar1",
                    name: "Ajoy Deb Nath",
                    rating: 5,
                    review: "Wonderfull product",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
