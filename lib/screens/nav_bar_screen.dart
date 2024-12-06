import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/Cart/cart_screen.dart';
import 'package:ecommerce_app/screens/Home/home_screen.dart';
import 'package:ecommerce_app/screens/Favorite/favorite.dart';
import 'package:ecommerce_app/screens/Profile/profile.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int cuttenIndex = 2;
  List screens = const [
              Scaffold(),
              Favorite(),
              HomeScreen(),
              CartScreen(),
              Profile()
            ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cuttenIndex = 2;
            
          });
        },
        shape: const CircleBorder(),
        backgroundColor: kprimaryColor,
        child: const Icon(Icons.home, color: Colors.white, size: 35),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 0;
                });
              },
              icon: Icon(Icons.grid_view_outlined,
                  size: 30,
                  color:
                      cuttenIndex == 0 ? kprimaryColor : Colors.grey.shade400),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 1;
                });
              },
              icon: Icon(Icons.favorite_border,
                  size: 30,
                  color:
                      cuttenIndex == 1 ? kprimaryColor : Colors.grey.shade400),
            ),
            const SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 3;
                });
              },
              icon: Icon(Icons.shopping_cart_outlined,
                  size: 30,
                  color:
                      cuttenIndex == 3 ? kprimaryColor : Colors.grey.shade400),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttenIndex = 4;
                });
              },
              icon: Icon(Icons.person,
                  size: 30,
                  color:
                      cuttenIndex == 4 ? kprimaryColor : Colors.grey.shade400),
            ),
          ],
        ),
      ),
      body: screens[cuttenIndex],
    );
  }
}
