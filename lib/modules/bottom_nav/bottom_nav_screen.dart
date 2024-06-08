import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:trendy_trade/modules/cart/ui/cart_screen.dart';

import '../../core/di/dependency_injection.dart';
import '../home/logic/products/products_cubit.dart';
import '../home/ui/screens/home_screen.dart';
import '../profile/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;
  //final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          //_pageController.jumpToPage(index);
        },
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Cart
          SalomonBottomBarItem(
            icon: const Icon(Icons.shopping_cart),
            title: const Text("Cart"),
            selectedColor: Colors.purple,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.purple,
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          HomeScreen(),
          CartScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
