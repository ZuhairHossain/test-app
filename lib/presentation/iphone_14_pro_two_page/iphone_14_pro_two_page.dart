import 'package:test_application/widgets/app_bar/custom_app_bar.dart';
import 'package:test_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:test_application/widgets/app_bar/appbar_title.dart';
import 'package:test_application/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/twentythree_item_widget.dart';
import 'package:test_application/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:test_application/core/app_export.dart';

class Iphone14ProTwoPage extends StatelessWidget {
  const Iphone14ProTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 15.v),
                child: Column(children: [
                  _buildTwentyThree(context),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(left: 15.h, right: 3.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.v),
                                child: Text("Total",
                                    style: CustomTextStyles
                                        .headlineSmallInterBluegray700)),
                            Text("758", style: theme.textTheme.headlineLarge)
                          ])),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(
                      text: "CHECKOUT",
                      margin: EdgeInsets.only(left: 7.h, right: 9.h),
                      onPressed: () {
                        onTapCHECKOUT(context);
                      }),
                  SizedBox(height: 12.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 61.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 27.h, top: 11.v, bottom: 10.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title:
            AppbarTitle(text: "CARRITO", margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup20,
              margin: EdgeInsets.fromLTRB(36.h, 19.v, 36.h, 18.v))
        ]);
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 1.v);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return TwentythreeItemWidget();
            }));
  }

  /// Navigates to the iphone14ProOneScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProOneScreen);
  }

  /// Navigates to the iphone14ProThreeScreen when the action is triggered.
  onTapCHECKOUT(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProThreeScreen);
  }
}
