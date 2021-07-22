// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../page/animated_icon.dart' as _i8;
import '../../page/button.dart' as _i3;
import '../../page/comments_data.dart' as _i5;
import '../../page/dragablescroll_shet.dart' as _i7;
import '../../page/login.dart' as _i10;
import '../../page/photos.dart' as _i4;
import '../../page/riverpod_screen.dart' as _i6;
import '../../page/shimmer.dart' as _i9;
import '../../page/silverappbar.dart' as _i13;
import '../../page/stepper.dart' as _i12;
import '../../page/text_overflow.dart' as _i11;

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
        }),
    AnimatedIconRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i8.AnimatedIconScreen();
        }),
    ShimmerRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i9.ShimmerScreen();
        }),
    LoginRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i10.LoginScreen();
        }),
    TextOverflowRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i11.TextOverflowScreen();
        }),
    SteppeRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i12.SteppeScreen();
        }),
    SilverAppBarRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i13.SilverAppBarScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(ButtonRoutePage.name, path: '/'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page-screen'),
        _i1.RouteConfig(CommentRoute.name, path: '/comment-screen'),
        _i1.RouteConfig(RiverpodRoute.name, path: '/riverpod-screen'),
        _i1.RouteConfig(DragRoute.name, path: '/drag-screen'),
        _i1.RouteConfig(AnimatedIconRoute.name, path: '/animated-icon-screen'),
        _i1.RouteConfig(ShimmerRoute.name, path: '/shimmer-screen'),
        _i1.RouteConfig(LoginRoute.name, path: '/login-screen'),
        _i1.RouteConfig(TextOverflowRoute.name, path: '/text-overflow-screen'),
        _i1.RouteConfig(SteppeRoute.name, path: '/steppe-screen'),
        _i1.RouteConfig(SilverAppBarRoute.name, path: '/silver-app-bar-screen')
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

class AnimatedIconRoute extends _i1.PageRouteInfo {
  const AnimatedIconRoute() : super(name, path: '/animated-icon-screen');

  static const String name = 'AnimatedIconRoute';
}

class ShimmerRoute extends _i1.PageRouteInfo {
  const ShimmerRoute() : super(name, path: '/shimmer-screen');

  static const String name = 'ShimmerRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login-screen');

  static const String name = 'LoginRoute';
}

class TextOverflowRoute extends _i1.PageRouteInfo {
  const TextOverflowRoute() : super(name, path: '/text-overflow-screen');

  static const String name = 'TextOverflowRoute';
}

class SteppeRoute extends _i1.PageRouteInfo {
  const SteppeRoute() : super(name, path: '/steppe-screen');

  static const String name = 'SteppeRoute';
}

class SilverAppBarRoute extends _i1.PageRouteInfo {
  const SilverAppBarRoute() : super(name, path: '/silver-app-bar-screen');

  static const String name = 'SilverAppBarRoute';
}
