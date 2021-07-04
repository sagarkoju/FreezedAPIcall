import 'package:auto_route/annotations.dart';

import 'package:auto_route/auto_route.dart';
import 'package:demo/page/animated_icon.dart';
import 'package:demo/page/button.dart';
import 'package:demo/page/comments_data.dart';
import 'package:demo/page/dragablescroll_shet.dart';
import 'package:demo/page/login.dart';
import 'package:demo/page/photos.dart';
import 'package:demo/page/riverpod_screen.dart';
import 'package:demo/page/shimmer.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(page: ButtonScreenPage, initial: true),
    AutoRoute<void>(page: HomePageScreen),
    AutoRoute<void>(page: CommentScreen),
    AutoRoute<void>(page: RiverpodScreen),
    AutoRoute<void>(page: DragScreen),
    AutoRoute<void>(page: AnimatedIconScreen),
    AutoRoute<void>(page: ShimmerScreen),
    AutoRoute<void>(page: LoginScreen),
  ],
)
class $AppRouter {}