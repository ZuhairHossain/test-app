import 'package:flutter/material.dart';
import '../presentation/iphone_14_pro_one_screen/iphone_14_pro_one_screen.dart';
import '../presentation/iphone_14_pro_two_container_screen/iphone_14_pro_two_container_screen.dart';
import '../presentation/iphone_14_pro_three_screen/iphone_14_pro_three_screen.dart';
import '../presentation/iphone_14_pro_four_screen/iphone_14_pro_four_screen.dart';
import '../presentation/iphone_14_pro_five_screen/iphone_14_pro_five_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone14ProOneScreen = '/iphone_14_pro_one_screen';

  static const String iphone14ProTwoContainerScreen =
      '/iphone_14_pro_two_container_screen';

  static const String iphone14ProTwoPage = '/iphone_14_pro_two_page';

  static const String iphone14ProThreeScreen = '/iphone_14_pro_three_screen';

  static const String iphone14ProFourScreen = '/iphone_14_pro_four_screen';

  static const String iphone14ProFiveScreen = '/iphone_14_pro_five_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone14ProOneScreen: (context) => Iphone14ProOneScreen(),
    iphone14ProTwoContainerScreen: (context) => Iphone14ProTwoContainerScreen(),
    iphone14ProThreeScreen: (context) => Iphone14ProThreeScreen(),
    iphone14ProFourScreen: (context) => Iphone14ProFourScreen(),
    iphone14ProFiveScreen: (context) => Iphone14ProFiveScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
