import 'package:flutter/material.dart';
import 'package:shopping_app_ui/myTheme.dart';
import 'package:shopping_app_ui/widgets/categoryItem.dart';
import 'package:shopping_app_ui/widgets/customAppBar.dart';
import 'package:shopping_app_ui/widgets/heading.dart';
import 'package:shopping_app_ui/widgets/productItem.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.background,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildCategories(),
            buildBestSelling(),
          ],
        ),
      ),
    );
  }

  buildCategories() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading("Categories"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                CategoryItem("assets/images/Icon_Mens Shoe.png", "Men"),
                CategoryItem("assets/images/Icon_Womens Shoe.png", "Women"),
                CategoryItem("assets/images/Icon_Devices.png", "Devices"),
                CategoryItem("assets/images/Icon_Gadgets.png", "Gadgets"),
                CategoryItem("assets/images/Icon_Gaming.png", "Gaming"),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildBestSelling() {
    //print(MediaQuery.of(context).size.height / 1500);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Heading("Best Selling")),
              Text("See all"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            childAspectRatio: MediaQuery.of(context).size.height / 1500,
            crossAxisSpacing: 12,
            mainAxisSpacing: 8,
            crossAxisCount: 2,
            children: [
              ProductItem("assets/images/chair.jpg", "BeoPlay Speaker",
                  "Bang and Olufsen", "\$755"),
              ProductItem("assets/images/tshirt.jpg",
                  "Nike Dri-FIT Long Sleeve", "Bang and Olufsen", "\$1500"),
              ProductItem("assets/images/watch.jpg", "Leather Wristwatch",
                  "Bang and Olufsen", "\$200"),
              ProductItem("assets/images/sound.jpg", "Smart Bluetooth Speaker",
                  "Bang and Olufsen", "\$785"),
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
