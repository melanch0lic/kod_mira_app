// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import '../pages/categories_page/categories_page.dart' as _i4;
import '../pages/home_page/home_page.dart' as _i3;
import '../pages/profile_page/profile_page.dart' as _i5;
import '../pages/profile_settings_page/profile_settings.dart' as _i6;
import '../pages/tabs_page/tabs_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    TabsRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TabsPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CategoriesPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfilePage(),
      );
    },
    ProfileSettingsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileSettingsPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          TabsRouter.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: TabsRouter.name,
              children: [
                _i7.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i7.RouteConfig(
                  CategoriesRoute.name,
                  path: 'categories',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: TabsRouter.name,
              children: [
                _i7.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i7.RouteConfig(
                  ProfileSettingsRoute.name,
                  path: 'settings',
                  parent: ProfileRouter.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.TabsPage]
class TabsRouter extends _i7.PageRouteInfo<void> {
  const TabsRouter({List<_i7.PageRouteInfo>? children})
      : super(
          TabsRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'TabsRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.CategoriesPage]
class CategoriesRoute extends _i7.PageRouteInfo<void> {
  const CategoriesRoute()
      : super(
          CategoriesRoute.name,
          path: 'categories',
        );

  static const String name = 'CategoriesRoute';
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i6.ProfileSettingsPage]
class ProfileSettingsRoute extends _i7.PageRouteInfo<void> {
  const ProfileSettingsRoute()
      : super(
          ProfileSettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'ProfileSettingsRoute';
}
