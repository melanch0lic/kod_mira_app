import 'package:auto_route/auto_route.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    final theme = Theme.of(context);
    return AutoTabsScaffold(
        routes: const [HomeRouter(), CatalogRouter(), TenderRouter(), CartRouter(), ProfileRouter()],
        bottomNavigationBuilder: (_, tabsRouter) {
          return CustomNavigationBar(
            borderRadius: const Radius.circular(15),
            iconSize: 30.0,
            selectedColor: const Color.fromRGBO(132, 177, 0, 1),
            strokeColor: const Color(0x30040307),
            unSelectedColor: const Color.fromRGBO(132, 177, 0, 1).withOpacity(0.5),
            backgroundColor: Colors.white,
            items: [
              CustomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/home.svg'),
                title: Text(
                  "Главная",
                  style: theme.textTheme.bodyMedium!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: const Color.fromRGBO(132, 177, 0, 1)),
                ),
              ),
              CustomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/catalog.svg'),
                title: Text(
                  "Каталог",
                  style: theme.textTheme.bodyMedium!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: const Color.fromRGBO(132, 177, 0, 1)),
                ),
              ),
              CustomNavigationBarItem(
                icon: const Icon(Icons.gavel),
                title: Text(
                  "Тендер",
                  style: theme.textTheme.bodyMedium!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: const Color.fromRGBO(132, 177, 0, 1)),
                ),
              ),
              CustomNavigationBarItem(
                badgeCount: ref.watch(cartCountProvider.notifier).state,
                showBadge: true,
                icon: SvgPicture.asset('assets/images/carma.svg'),
                title: Text(
                  "Корзина",
                  style: theme.textTheme.bodyMedium!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: const Color.fromRGBO(132, 177, 0, 1)),
                ),
              ),
              CustomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/profile.svg'),
                title: Text(
                  "Профиль",
                  style: theme.textTheme.bodyMedium!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: const Color.fromRGBO(132, 177, 0, 1)),
                ),
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
