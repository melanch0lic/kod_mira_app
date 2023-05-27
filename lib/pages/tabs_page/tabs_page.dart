import 'package:auto_route/auto_route.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kod_mira_app/navigation/router.gr.dart';
import 'package:kod_mira_app/providers/cart_provider.dart';

class TabsPage extends ConsumerStatefulWidget {
  const TabsPage({super.key});

  @override
  ConsumerState<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends ConsumerState<TabsPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        routes: const [HomeRouter(), CatalogRouter(), ProfileRouter(), CartRouter(), ProfileRouter()],
        bottomNavigationBuilder: (_, tabsRouter) {
          return CustomNavigationBar(
            iconSize: 30.0,
            selectedColor: const Color.fromRGBO(132, 177, 0, 1),
            strokeColor: const Color(0x30040307),
            unSelectedColor: const Color.fromRGBO(132, 177, 0, 1).withOpacity(0.5),
            backgroundColor: Colors.white,
            items: [
              CustomNavigationBarItem(
                icon: const Icon(Icons.home),
                title: const Text("Главная"),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.local_mall),
                title: const Text("Каталог"),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.gavel),
                title: const Text("Тендер"),
              ),
              CustomNavigationBarItem(
                badgeCount: ref.watch(cartCountProvider.notifier).state,
                showBadge: true,
                icon: const Icon(Icons.shopping_cart),
                title: const Text("Корзина"),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.account_circle),
                title: const Text("Профиль"),
              ),
            ],
            currentIndex: _currentIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
              setState(() {
                _currentIndex = index;
              });
            },
          );
        });
  }
}
