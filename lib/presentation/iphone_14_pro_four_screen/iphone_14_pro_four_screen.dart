import 'package:test_application/presentation/iphone_14_pro_two_page/iphone_14_pro_two_page.dart';
import 'package:test_application/widgets/app_bar/custom_app_bar.dart';
import 'package:test_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:test_application/widgets/app_bar/appbar_title.dart';
import 'package:test_application/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/thirtyseven_item_widget.dart';
import 'package:test_application/widgets/custom_bottom_app_bar.dart';
import 'package:test_application/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:test_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProFourScreen extends StatelessWidget {
  Iphone14ProFourScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFrameFourteen(context),
                  SizedBox(height: 77.v),
                  Padding(
                      padding: EdgeInsets.only(left: 64.h, right: 69.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Más Vendidos",
                                style: CustomTextStyles
                                    .labelLargeSFProDisplayPrimaryContainer),
                            Spacer(flex: 48),
                            Text("Nuevos", style: theme.textTheme.bodySmall),
                            Spacer(flex: 51),
                            Text("Proximamente",
                                style: theme.textTheme.bodySmall)
                          ])),
                  SizedBox(height: 4.v),
                  SizedBox(
                      height: 14.v,
                      width: 313.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.only(left: 58.h),
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primaryContainer,
                                    borderRadius: BorderRadius.circular(7.h)))),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                width: 313.h,
                                child: Divider(
                                    color:
                                        theme.colorScheme.secondaryContainer)))
                      ])),
                  SizedBox(height: 10.v),
                  _buildFortyOne(context),
                  SizedBox(height: 16.v)
                ])),
            bottomNavigationBar: _buildMenuTabsBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 16, width: 16, child: Icon(Icons.add)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 97.v,
        leadingWidth: 61.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 27.h, top: 1.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title:
            AppbarTitle(text: "PRODUCTOS", margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgRewind,
              margin: EdgeInsets.only(left: 36.h, top: 8.v, right: 7.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup20,
              margin: EdgeInsets.fromLTRB(24.h, 9.v, 43.h, 1.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrameFourteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSettings, height: 14.v, width: 21.h),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child:
                  Text("Figma", style: CustomTextStyles.bodySmallOnPrimary_1)),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsOnprimary,
              height: 14.v,
              width: 15.h,
              margin: EdgeInsets.only(left: 4.h)),
          Spacer(flex: 45),
          Text("9:41 AM",
              style: CustomTextStyles.labelLargeSFProDisplayOnPrimary),
          Spacer(flex: 54),
          Text("100%", style: CustomTextStyles.bodySmallOnPrimary),
          CustomImageView(
              imagePath: ImageConstant.imgTelevision,
              height: 11.v,
              width: 26.h,
              margin: EdgeInsets.only(left: 3.h, top: 2.v, bottom: 2.v))
        ]));
  }

  /// Section Widget
  Widget _buildFortyOne(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 590.v,
            width: 364.h,
            child: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                      onTap: () {
                        onTapSixteen(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 29.h, top: 10.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 7.h, vertical: 19.v),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder18),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
                                SizedBox(
                                    height: 46.v,
                                    width: 131.h,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Text("Jordan VI",
                                                  style: theme.textTheme
                                                      .headlineMedium)),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 14.h),
                                                  child: Text(
                                                      "Rebajas de enero",
                                                      style: CustomTextStyles
                                                          .labelLargeOnPrimary)))
                                        ])),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("35% Descuento",
                                        style: CustomTextStyles
                                            .headlineSmallOnPrimary))
                              ])))),
              CustomImageView(
                  imagePath: ImageConstant.imgShoeShadow,
                  height: 45.v,
                  width: 165.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 93.v)),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13.h),
                      child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 1.v);
                          },
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ThirtysevenItemWidget();
                          })))
            ])));
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

  /// Navigates to the iphone14ProThreeScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProThreeScreen);
  }

  /// Navigates to the iphone14ProFiveScreen when the action is triggered.
  onTapSixteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProFiveScreen);
  }
}
