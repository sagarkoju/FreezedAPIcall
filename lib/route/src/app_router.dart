import 'package:auto_route/annotations.dart';

import 'package:auto_route/auto_route.dart';
import 'package:demo/page/animated_icon.dart';
import 'package:demo/page/button.dart';
import 'package:demo/page/button_disable.dart';
import 'package:demo/page/comments_data.dart';
import 'package:demo/page/dragablescroll_shet.dart';
import 'package:demo/page/dynamic_text_formfield.dart';
import 'package:demo/page/fold.dart';
import 'package:demo/page/login.dart';
import 'package:demo/page/new_screen.dart';
import 'package:demo/page/phone_call_dialer.dart';
import 'package:demo/page/photos.dart';
import 'package:demo/page/riverpod_screen.dart';
import 'package:demo/page/shimmer.dart';
import 'package:demo/page/silverappbar.dart';
import 'package:demo/page/stepper.dart';
import 'package:demo/page/text_overflow.dart';
import 'package:demo/page/textfield_data_show.dart';
import 'package:demo/page/tinder_swiper.dart';

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
    AutoRoute<void>(page: TextOverflowScreen),
    AutoRoute<void>(page: SteppeScreen),
    AutoRoute<void>(page: SilverAppBarScreen),
    AutoRoute<void>(page: PhoneCallScreen),
    AutoRoute<void>(page: DynamicTextFormFieldScreen),
    AutoRoute<void>(page: NewScreen),
    AutoRoute<void>(page: TinderSwiperScreen),
    AutoRoute<void>(page: FoldScreen),
    AutoRoute<void>(page: ButtonEnableDisableScreen),
    AutoRoute<void>(page: ShowDataScreen),
  ],
)
class $AppRouter {}
