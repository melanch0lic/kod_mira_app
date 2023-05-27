import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:kod_mira_app/pages/cart_page/cart_page.dart';
import 'package:kod_mira_app/pages/catalog_page/catalog_page.dart';
import 'package:kod_mira_app/pages/categories_page/categories_page.dart';
import 'package:kod_mira_app/pages/farm_page/farm_page.dart';
import 'package:kod_mira_app/pages/tender_detail_page/tender_detail_page.dart';
import 'package:kod_mira_app/pages/tender_page/tender_page.dart';

import '../pages/farm_detail_page/farm_detail_page.dart';
import '../pages/home_page/home_page.dart';
import '../pages/product_detail_page/product_detail_page.dart';
import '../pages/profile_page/profile_page.dart';
import '../pages/profile_settings_page/profile_settings.dart';
import '../pages/tabs_page/tabs_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      name: 'TabsRouter',
      page: TabsPage,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(page: HomePage, initial: true),
            AutoRoute(page: CategoriesPage, path: 'categories'),
            AutoRoute(page: FarmDetailPage, path: 'farm_detailis'),
            AutoRoute(page: ProductDetailPage, path: 'product_detailis'),
            AutoRoute(page: FarmPage, path: 'farm')
          ],
        ),
        AutoRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(page: ProfilePage, initial: true),
            AutoRoute(page: ProfileSettingsPage, path: 'settings')
          ],
        ),
        AutoRoute(path: 'catalog', name: 'CatalogRouter', page: EmptyRouterPage, children: [
          AutoRoute(page: CatalogPage, initial: true),
          AutoRoute(page: CategoriesPage, path: 'categories'),
        ]),
        AutoRoute(
          path: 'cart',
          name: 'CartRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(page: CartPage, initial: true),
          ],
        ),
        AutoRoute(
          path: 'tender',
          name: 'TenderRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(page: TenderPage, initial: true),
            AutoRoute(page: TenderDetailPage, path: 'detailis'),
          ],
        ),
      ],
    )
  ],
)
class $AppRouter {}
