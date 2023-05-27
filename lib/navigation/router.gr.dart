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
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i15;

import '../data/network/models/product_model.dart' as _i16;
import '../data/network/models/tender_model.dart' as _i17;
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
import '../pages/tender_detail_page/tender_detail_page.dart' as _i13;
import '../pages/tender_page/tender_page.dart' as _i12;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    TabsRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TabsPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    CatalogRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    CartRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    TenderRouter.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CategoriesPage(),
      );
    },
    FarmDetailRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.FarmDetailPage(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.ProductDetailPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    FarmRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.FarmPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ProfilePage(),
      );
    },
    ProfileSettingsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ProfileSettingsPage(),
      );
    },
    CatalogRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.CatalogPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.CartPage(),
      );
    },
    TenderRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.TenderPage(),
      );
    },
    TenderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TenderDetailRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.TenderDetailPage(
          key: args.key,
          tender: args.tender,
        ),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          TabsRouter.name,
          path: '/',
          children: [
            _i14.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: TabsRouter.name,
              children: [
                _i14.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i14.RouteConfig(
                  CategoriesRoute.name,
                  path: 'categories',
                  parent: HomeRouter.name,
                ),
                _i14.RouteConfig(
                  FarmDetailRoute.name,
                  path: 'farm_detailis',
                  parent: HomeRouter.name,
                ),
                _i14.RouteConfig(
                  ProductDetailRoute.name,
                  path: 'product_detailis',
                  parent: HomeRouter.name,
                ),
                _i14.RouteConfig(
                  FarmRoute.name,
                  path: 'farm',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i14.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: TabsRouter.name,
              children: [
                _i14.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i14.RouteConfig(
                  ProfileSettingsRoute.name,
                  path: 'settings',
                  parent: ProfileRouter.name,
                ),
              ],
            ),
            _i14.RouteConfig(
              CatalogRouter.name,
              path: 'catalog',
              parent: TabsRouter.name,
              children: [
                _i14.RouteConfig(
                  CatalogRoute.name,
                  path: '',
                  parent: CatalogRouter.name,
                ),
                _i14.RouteConfig(
                  CategoriesRoute.name,
                  path: 'categories',
                  parent: CatalogRouter.name,
                ),
              ],
            ),
            _i14.RouteConfig(
              CartRouter.name,
              path: 'cart',
              parent: TabsRouter.name,
              children: [
                _i14.RouteConfig(
                  CartRoute.name,
                  path: '',
                  parent: CartRouter.name,
                )
              ],
            ),
            _i14.RouteConfig(
              TenderRouter.name,
              path: 'tender',
              parent: TabsRouter.name,
              children: [
                _i14.RouteConfig(
                  TenderRoute.name,
                  path: '',
                  parent: TenderRouter.name,
                ),
                _i14.RouteConfig(
                  TenderDetailRoute.name,
                  path: 'detailis',
                  parent: TenderRouter.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.TabsPage]
class TabsRouter extends _i14.PageRouteInfo<void> {
  const TabsRouter({List<_i14.PageRouteInfo>? children})
      : super(
          TabsRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'TabsRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i14.PageRouteInfo<void> {
  const HomeRouter({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i14.PageRouteInfo<void> {
  const ProfileRouter({List<_i14.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CatalogRouter extends _i14.PageRouteInfo<void> {
  const CatalogRouter({List<_i14.PageRouteInfo>? children})
      : super(
          CatalogRouter.name,
          path: 'catalog',
          initialChildren: children,
        );

  static const String name = 'CatalogRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CartRouter extends _i14.PageRouteInfo<void> {
  const CartRouter({List<_i14.PageRouteInfo>? children})
      : super(
          CartRouter.name,
          path: 'cart',
          initialChildren: children,
        );

  static const String name = 'CartRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class TenderRouter extends _i14.PageRouteInfo<void> {
  const TenderRouter({List<_i14.PageRouteInfo>? children})
      : super(
          TenderRouter.name,
          path: 'tender',
          initialChildren: children,
        );

  static const String name = 'TenderRouter';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.CategoriesPage]
class CategoriesRoute extends _i14.PageRouteInfo<void> {
  const CategoriesRoute()
      : super(
          CategoriesRoute.name,
          path: 'categories',
        );

  static const String name = 'CategoriesRoute';
}

/// generated route for
/// [_i5.FarmDetailPage]
class FarmDetailRoute extends _i14.PageRouteInfo<void> {
  const FarmDetailRoute()
      : super(
          FarmDetailRoute.name,
          path: 'farm_detailis',
        );

  static const String name = 'FarmDetailRoute';
}

/// generated route for
/// [_i6.ProductDetailPage]
class ProductDetailRoute extends _i14.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    _i15.Key? key,
    required _i16.ProductModel product,
  }) : super(
          ProductDetailRoute.name,
          path: 'product_detailis',
          args: ProductDetailRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.product,
  });

  final _i15.Key? key;

  final _i16.ProductModel product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i7.FarmPage]
class FarmRoute extends _i14.PageRouteInfo<void> {
  const FarmRoute()
      : super(
          FarmRoute.name,
          path: 'farm',
        );

  static const String name = 'FarmRoute';
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i9.ProfileSettingsPage]
class ProfileSettingsRoute extends _i14.PageRouteInfo<void> {
  const ProfileSettingsRoute()
      : super(
          ProfileSettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'ProfileSettingsRoute';
}

/// generated route for
/// [_i10.CatalogPage]
class CatalogRoute extends _i14.PageRouteInfo<void> {
  const CatalogRoute()
      : super(
          CatalogRoute.name,
          path: '',
        );

  static const String name = 'CatalogRoute';
}

/// generated route for
/// [_i11.CartPage]
class CartRoute extends _i14.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i12.TenderPage]
class TenderRoute extends _i14.PageRouteInfo<void> {
  const TenderRoute()
      : super(
          TenderRoute.name,
          path: '',
        );

  static const String name = 'TenderRoute';
}

/// generated route for
/// [_i13.TenderDetailPage]
class TenderDetailRoute extends _i14.PageRouteInfo<TenderDetailRouteArgs> {
  TenderDetailRoute({
    _i15.Key? key,
    required _i17.TenderModel tender,
  }) : super(
          TenderDetailRoute.name,
          path: 'detailis',
          args: TenderDetailRouteArgs(
            key: key,
            tender: tender,
          ),
        );

  static const String name = 'TenderDetailRoute';
}

class TenderDetailRouteArgs {
  const TenderDetailRouteArgs({
    this.key,
    required this.tender,
  });

  final _i15.Key? key;

  final _i17.TenderModel tender;

  @override
  String toString() {
    return 'TenderDetailRouteArgs{key: $key, tender: $tender}';
  }
}
