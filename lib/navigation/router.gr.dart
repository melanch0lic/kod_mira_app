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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i13;

import '../pages/cart_page/cart_page.dart' as _i11;
import '../pages/catalog_page/catalog_page.dart' as _i10;
import '../pages/categories_page/categories_page.dart' as _i4;
import '../pages/farm_detail_page/farm_detail_page.dart' as _i5;
import '../pages/farm_page/farm_page.dart' as _i7;
import '../pages/home_page/home_page.dart' as _i3;
import '../pages/product_detail_page/product_detail_page.dart' as _i6;
import '../pages/profile_page/profile_page.dart' as _i8;
import '../pages/profile_settings_page/profile_settings.dart' as _i9;
import '../pages/tabs_page/tabs_page.dart' as _i1;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    TabsRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TabsPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    CatalogRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    CartRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CategoriesPage(),
      );
    },
    FarmDetailRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.FarmDetailPage(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProductDetailPage(),
      );
    },
    FarmRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.FarmPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ProfilePage(),
      );
    },
    ProfileSettingsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ProfileSettingsPage(),
      );
    },
    CatalogRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.CatalogPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.CartPage(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          TabsRouter.name,
          path: '/',
          children: [
            _i12.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: TabsRouter.name,
              children: [
                _i12.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  CategoriesRoute.name,
                  path: 'categories',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  FarmDetailRoute.name,
                  path: 'farm_detailis',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  ProductDetailRoute.name,
                  path: 'product_detailis',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  FarmRoute.name,
                  path: 'farm',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: TabsRouter.name,
              children: [
                _i12.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i12.RouteConfig(
                  ProfileSettingsRoute.name,
                  path: 'settings',
                  parent: ProfileRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              CatalogRouter.name,
              path: 'catalog',
              parent: TabsRouter.name,
              children: [
                _i12.RouteConfig(
                  CatalogRoute.name,
                  path: '',
                  parent: CatalogRouter.name,
                ),
                _i12.RouteConfig(
                  CategoriesRoute.name,
                  path: 'categories',
                  parent: CatalogRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              CartRouter.name,
              path: 'cart',
              parent: TabsRouter.name,
              children: [
                _i12.RouteConfig(
                  CartRoute.name,
                  path: '',
                  parent: CartRouter.name,
                )
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.TabsPage]
class TabsRouter extends _i12.PageRouteInfo<void> {
  const TabsRouter({List<_i12.PageRouteInfo>? children})
      : super(
          TabsRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'TabsRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i12.PageRouteInfo<void> {
  const HomeRouter({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i12.PageRouteInfo<void> {
  const ProfileRouter({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CatalogRouter extends _i12.PageRouteInfo<void> {
  const CatalogRouter({List<_i12.PageRouteInfo>? children})
      : super(
          CatalogRouter.name,
          path: 'catalog',
          initialChildren: children,
        );

  static const String name = 'CatalogRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CartRouter extends _i12.PageRouteInfo<void> {
  const CartRouter({List<_i12.PageRouteInfo>? children})
      : super(
          CartRouter.name,
          path: 'cart',
          initialChildren: children,
        );

  static const String name = 'CartRouter';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.CategoriesPage]
class CategoriesRoute extends _i12.PageRouteInfo<void> {
  const CategoriesRoute()
      : super(
          CategoriesRoute.name,
          path: 'categories',
        );

  static const String name = 'CategoriesRoute';
}

/// generated route for
/// [_i5.FarmDetailPage]
class FarmDetailRoute extends _i12.PageRouteInfo<void> {
  const FarmDetailRoute()
      : super(
          FarmDetailRoute.name,
          path: 'farm_detailis',
        );

  static const String name = 'FarmDetailRoute';
}

/// generated route for
/// [_i6.ProductDetailPage]
class ProductDetailRoute extends _i12.PageRouteInfo<void> {
  const ProductDetailRoute()
      : super(
          ProductDetailRoute.name,
          path: 'product_detailis',
        );

  static const String name = 'ProductDetailRoute';
}

/// generated route for
/// [_i7.FarmPage]
class FarmRoute extends _i12.PageRouteInfo<void> {
  const FarmRoute()
      : super(
          FarmRoute.name,
          path: 'farm',
        );

  static const String name = 'FarmRoute';
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i9.ProfileSettingsPage]
class ProfileSettingsRoute extends _i12.PageRouteInfo<void> {
  const ProfileSettingsRoute()
      : super(
          ProfileSettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'ProfileSettingsRoute';
}

/// generated route for
/// [_i10.CatalogPage]
class CatalogRoute extends _i12.PageRouteInfo<void> {
  const CatalogRoute()
      : super(
          CatalogRoute.name,
          path: '',
        );

  static const String name = 'CatalogRoute';
}

/// generated route for
/// [_i11.CartPage]
class CartRoute extends _i12.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '',
        );

  static const String name = 'CartRoute';
}
