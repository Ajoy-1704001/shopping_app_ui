import 'package:flutter/material.dart';
import 'package:shopping_app_ui/widgets/accountTile.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 25, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      "assets/images/pro_pic.jpg",
                      fit: BoxFit.cover,
                    ),
                    radius: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        "David Spade",
                        style: TextStyle(fontSize: 25),
                      ),
                      subtitle: Text("iamdavid@gmail.com"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  AccountTile(
                    icon: Icons.edit_outlined,
                    title: "Edit Profile",
                  ),
                  AccountTile(
                    icon: Icons.location_on_outlined,
                    title: "Shipping Address",
                  ),
                  AccountTile(
                    icon: Icons.favorite_border,
                    title: "Wishlist",
                  ),
                  AccountTile(
                    icon: Icons.history,
                    title: "Order History",
                  ),
                  AccountTile(
                    icon: Icons.inbox,
                    title: "Track Order",
                  ),
                  AccountTile(
                    icon: Icons.credit_card_sharp,
                    title: "Cards",
                  ),
                  AccountTile(
                    icon: Icons.notifications_active_outlined,
                    title: "Notifications",
                  ),
                  AccountTile(
                    icon: Icons.logout,
                    title: "Log Out",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
