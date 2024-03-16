import 'package:test_application/presentation/iphone_14_pro_two_page/iphone_14_pro_two_page.dart';
import 'package:test_application/widgets/custom_bottom_app_bar.dart';
import 'package:test_application/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:test_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProTwoContainerScreen extends StatelessWidget {
  Iphone14ProTwoContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.iphone14ProTwoPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildMenuTabsBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 16, width: 16, child: Icon(Icons.add)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildMenuTabsBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Search:
        return AppRoutes.iphone14ProTwoPage;
      case BottomBarEnum.Bag:
        return "/";
      case BottomBarEnum.Favorite:
        return "/";
      case BottomBarEnum.Lock:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone14ProTwoPage:
        return Iphone14ProTwoPage();
      default:
        return DefaultWidget();
    }
  }
}
