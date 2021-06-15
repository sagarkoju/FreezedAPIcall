// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../page/button.dart' as _i3;
import '../../page/comments_data.dart' as _i5;
import '../../page/dragablescroll_shet.dart' as _i7;
import '../../page/photos.dart' as _i4;
import '../../page/riverpod_screen.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    ButtonRoutePage.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i3.ButtonScreenPage();
        }),
    HomePageRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<HomePageRouteArgs>(
              orElse: () => const HomePageRouteArgs());
          return _i4.HomePageScreen(key: args.key);
        }),
    CommentRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i5.CommentScreen();
        }),
    RiverpodRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i6.RiverpodScreen();
        }),
    DragRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i7.DragScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(ButtonRoutePage.name, path: '/'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page-screen'),
        _i1.RouteConfig(CommentRoute.name, path: '/comment-screen'),
        _i1.RouteConfig(RiverpodRoute.name, path: '/riverpod-screen'),
        _i1.RouteConfig(DragRoute.name, path: '/drag-screen')
      ];
}

class ButtonRoutePage extends _i1.PageRouteInfo {
  const ButtonRoutePage() : super(name, path: '/');

  static const String name = 'ButtonRoutePage';
}

class HomePageRoute extends _i1.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i2.Key? key})
      : super(name,
            path: '/home-page-screen', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i2.Key? key;
}

class CommentRoute extends _i1.PageRouteInfo {
  const CommentRoute() : super(name, path: '/comment-screen');

  static const String name = 'CommentRoute';
}

class RiverpodRoute extends _i1.PageRouteInfo {
  const RiverpodRoute() : super(name, path: '/riverpod-screen');

  static const String name = 'RiverpodRoute';
}

class DragRoute extends _i1.PageRouteInfo {
  const DragRoute() : super(name, path: '/drag-screen');

  static const String name = 'DragRoute';
}
