import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:kod_mira_app/pages/categories_page/categories_page.dart';

import '../pages/home_page/home_page.dart';
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
      ],
    )
  ],
)
class $AppRouter {}
