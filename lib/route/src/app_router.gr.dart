// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

import '../../page/animated_icon.dart' as _i6;
import '../../page/button.dart' as _i1;
import '../../page/button_disable.dart' as _i17;
import '../../page/comments_data.dart' as _i3;
import '../../page/dragablescroll_shet.dart' as _i5;
import '../../page/dynamic_text_formfield.dart' as _i13;
import '../../page/fold.dart' as _i16;
import '../../page/login.dart' as _i8;
import '../../page/new_screen.dart' as _i14;
import '../../page/phone_call_dialer.dart' as _i12;
import '../../page/photos.dart' as _i2;
import '../../page/riverpod_screen.dart' as _i4;
import '../../page/shimmer.dart' as _i7;
import '../../page/silverappbar.dart' as _i11;
import '../../page/stepper.dart' as _i10;
import '../../page/text_overflow.dart' as _i9;
import '../../page/textfield_data_show.dart' as _i18;
import '../../page/tinder_swiper.dart' as _i15;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    ButtonRoutePage.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i1.ButtonScreenPage());
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: _i2.HomePageScreen(key: args.key));
    },
    CommentRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i3.CommentScreen());
    },
    RiverpodRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i4.RiverpodScreen());
    },
    DragRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i5.DragScreen());
    },
    AnimatedIconRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i6.AnimatedIconScreen());
    },
    ShimmerRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i7.ShimmerScreen());
    },
    LoginRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i8.LoginScreen());
    },
    TextOverflowRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i9.TextOverflowScreen());
    },
    SteppeRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i10.SteppeScreen());
    },
    SilverAppBarRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i11.SilverAppBarScreen());
    },
    PhoneCallRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i12.PhoneCallScreen());
    },
    DynamicTextFormFieldRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i13.DynamicTextFormFieldScreen());
    },
    NewRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i14.NewScreen());
    },
    TinderSwiperRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i15.TinderSwiperScreen());
    },
    FoldRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i16.FoldScreen());
    },
    ButtonEnableDisableRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i17.ButtonEnableDisableScreen());
    },
    ShowDataRoute.name: (routeData) {
      return _i19.MaterialPageX<void>(
          routeData: routeData, child: const _i18.ShowDataScreen());
    }
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(ButtonRoutePage.name, path: '/'),
        _i19.RouteConfig(HomePageRoute.name, path: '/home-page-screen'),
        _i19.RouteConfig(CommentRoute.name, path: '/comment-screen'),
        _i19.RouteConfig(RiverpodRoute.name, path: '/riverpod-screen'),
        _i19.RouteConfig(DragRoute.name, path: '/drag-screen'),
        _i19.RouteConfig(AnimatedIconRoute.name, path: '/animated-icon-screen'),
        _i19.RouteConfig(ShimmerRoute.name, path: '/shimmer-screen'),
        _i19.RouteConfig(LoginRoute.name, path: '/login-screen'),
        _i19.RouteConfig(TextOverflowRoute.name, path: '/text-overflow-screen'),
        _i19.RouteConfig(SteppeRoute.name, path: '/steppe-screen'),
        _i19.RouteConfig(SilverAppBarRoute.name,
            path: '/silver-app-bar-screen'),
        _i19.RouteConfig(PhoneCallRoute.name, path: '/phone-call-screen'),
        _i19.RouteConfig(DynamicTextFormFieldRoute.name,
            path: '/dynamic-text-form-field-screen'),
        _i19.RouteConfig(NewRoute.name, path: '/new-screen'),
        _i19.RouteConfig(TinderSwiperRoute.name, path: '/tinder-swiper-screen'),
        _i19.RouteConfig(FoldRoute.name, path: '/fold-screen'),
        _i19.RouteConfig(ButtonEnableDisableRoute.name,
            path: '/button-enable-disable-screen'),
        _i19.RouteConfig(ShowDataRoute.name, path: '/show-data-screen')
      ];
}

/// generated route for [_i1.ButtonScreenPage]
class ButtonRoutePage extends _i19.PageRouteInfo<void> {
  const ButtonRoutePage() : super(name, path: '/');

  static const String name = 'ButtonRoutePage';
}

/// generated route for [_i2.HomePageScreen]
class HomePageRoute extends _i19.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i20.Key? key})
      : super(name,
            path: '/home-page-screen', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i20.Key? key;
}

/// generated route for [_i3.CommentScreen]
class CommentRoute extends _i19.PageRouteInfo<void> {
  const CommentRoute() : super(name, path: '/comment-screen');

  static const String name = 'CommentRoute';
}

/// generated route for [_i4.RiverpodScreen]
class RiverpodRoute extends _i19.PageRouteInfo<void> {
  const RiverpodRoute() : super(name, path: '/riverpod-screen');

  static const String name = 'RiverpodRoute';
}

/// generated route for [_i5.DragScreen]
class DragRoute extends _i19.PageRouteInfo<void> {
  const DragRoute() : super(name, path: '/drag-screen');

  static const String name = 'DragRoute';
}

/// generated route for [_i6.AnimatedIconScreen]
class AnimatedIconRoute extends _i19.PageRouteInfo<void> {
  const AnimatedIconRoute() : super(name, path: '/animated-icon-screen');

  static const String name = 'AnimatedIconRoute';
}

/// generated route for [_i7.ShimmerScreen]
class ShimmerRoute extends _i19.PageRouteInfo<void> {
  const ShimmerRoute() : super(name, path: '/shimmer-screen');

  static const String name = 'ShimmerRoute';
}

/// generated route for [_i8.LoginScreen]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login-screen');

  static const String name = 'LoginRoute';
}

/// generated route for [_i9.TextOverflowScreen]
class TextOverflowRoute extends _i19.PageRouteInfo<void> {
  const TextOverflowRoute() : super(name, path: '/text-overflow-screen');

  static const String name = 'TextOverflowRoute';
}

/// generated route for [_i10.SteppeScreen]
class SteppeRoute extends _i19.PageRouteInfo<void> {
  const SteppeRoute() : super(name, path: '/steppe-screen');

  static const String name = 'SteppeRoute';
}

/// generated route for [_i11.SilverAppBarScreen]
class SilverAppBarRoute extends _i19.PageRouteInfo<void> {
  const SilverAppBarRoute() : super(name, path: '/silver-app-bar-screen');

  static const String name = 'SilverAppBarRoute';
}

/// generated route for [_i12.PhoneCallScreen]
class PhoneCallRoute extends _i19.PageRouteInfo<void> {
  const PhoneCallRoute() : super(name, path: '/phone-call-screen');

  static const String name = 'PhoneCallRoute';
}

/// generated route for [_i13.DynamicTextFormFieldScreen]
class DynamicTextFormFieldRoute extends _i19.PageRouteInfo<void> {
  const DynamicTextFormFieldRoute()
      : super(name, path: '/dynamic-text-form-field-screen');

  static const String name = 'DynamicTextFormFieldRoute';
}

/// generated route for [_i14.NewScreen]
class NewRoute extends _i19.PageRouteInfo<void> {
  const NewRoute() : super(name, path: '/new-screen');

  static const String name = 'NewRoute';
}

/// generated route for [_i15.TinderSwiperScreen]
class TinderSwiperRoute extends _i19.PageRouteInfo<void> {
  const TinderSwiperRoute() : super(name, path: '/tinder-swiper-screen');

  static const String name = 'TinderSwiperRoute';
}

/// generated route for [_i16.FoldScreen]
class FoldRoute extends _i19.PageRouteInfo<void> {
  const FoldRoute() : super(name, path: '/fold-screen');

  static const String name = 'FoldRoute';
}

/// generated route for [_i17.ButtonEnableDisableScreen]
class ButtonEnableDisableRoute extends _i19.PageRouteInfo<void> {
  const ButtonEnableDisableRoute()
      : super(name, path: '/button-enable-disable-screen');

  static const String name = 'ButtonEnableDisableRoute';
}

/// generated route for [_i18.ShowDataScreen]
class ShowDataRoute extends _i19.PageRouteInfo<void> {
  const ShowDataRoute() : super(name, path: '/show-data-screen');

  static const String name = 'ShowDataRoute';
}
