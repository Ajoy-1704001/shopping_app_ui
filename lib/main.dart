import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app_ui/myTheme.dart';
import 'package:shopping_app_ui/screens/account.dart';
import 'package:shopping_app_ui/screens/cart.dart';
import 'package:shopping_app_ui/screens/home.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Nunito",
          primarySwatch: Colors.blue,
          primaryColor: MyTheme.primary),
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  List<Widget> _screens = [HomeScreen()];
  int currentIndex = 0;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          HomeScreen(),
          CartScreen(),
          AccountScreen(),
        ],
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: AnimatedContainer(
        width: MediaQuery.of(context).size.width,
        height: 70,
        duration: Duration(milliseconds: 400),
        child: Row(
          children: [
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                      _controller.animateToPage(0,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    },
                    child: currentIndex == 0
                        ? Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Explore",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))
                        : Icon(Icons.home_outlined))),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                      _controller.animateToPage(1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    },
                    child: currentIndex == 1
                        ? Align(
                            alignment: Alignment.center,
                            child: Text("Cart",
                                style: TextStyle(fontWeight: FontWeight.bold)))
                        : Icon(Icons.shopping_cart_outlined))),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                      _controller.animateToPage(2,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    },
                    child: currentIndex == 2
                        ? Align(
                            alignment: Alignment.center,
                            child: Text("Account",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          )
                        : Icon(Icons.person_outline_rounded))),
          ],
        ),
      ),
    );
  }
}
