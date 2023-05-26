import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: const Color(0xff040307),
      strokeColor: const Color(0x30040307),
      unSelectedColor: const Color(0xffacacac),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.search),
          title: const Text("Поиск"),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.favorite),
          title: const Text("Избранное"),
        ),
        CustomNavigationBarItem(
          showBadge: true,
          icon: const Icon(Icons.add_shopping_cart),
          title: const Text("Продажа"),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.message),
          title: const Text("Связь"),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.account_circle),
          title: const Text("Профиль"),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
