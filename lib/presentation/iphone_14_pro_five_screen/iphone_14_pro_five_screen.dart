import 'package:test_application/widgets/app_bar/custom_app_bar.dart';
import 'package:test_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:test_application/widgets/app_bar/appbar_title.dart';
import 'package:test_application/widgets/app_bar/appbar_trailing_image.dart';
import '../iphone_14_pro_five_screen/widgets/twentytwo_item_widget.dart';
import 'package:test_application/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:test_application/core/app_export.dart';

class Iphone14ProFiveScreen extends StatelessWidget {
  const Iphone14ProFiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 19.v),
                child: Column(children: [
                  _buildFifteen(context),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 44.v,
                                width: 60.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 17.h, vertical: 10.v),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgVector,
                                    height: 22.v,
                                    width: 24.h,
                                    alignment: Alignment.topRight)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 14.h, top: 2.v, bottom: 2.v),
                                child: Text("AIR JORDAN IV",
                                    style: CustomTextStyles
                                        .headlineLargePrimaryContainer))
                          ])),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 301.h,
                          margin: EdgeInsets.only(left: 10.h, right: 22.h),
                          child: Text(
                              "Las Air Jordan V no son solo el siguiente paso de esta icónica franquicia sino la expresión del impulso y la energía del baloncesto",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmall11
                                  .copyWith(height: 1.18)))),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("Color",
                              style:
                                  CustomTextStyles.labelLargeErrorContainer))),
                  SizedBox(height: 11.v),
                  _buildThirtySix(context),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 12.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Talla",
                                style:
                                    CustomTextStyles.labelLargeErrorContainer),
                            Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text("Guia de tallas",
                                    style: theme.textTheme.labelMedium))
                          ])),
                  SizedBox(height: 12.v),
                  _buildTwentyTwo(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildThirtyFour(context)));
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
        title: AppbarTitle(text: "ATRAS", margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup20,
              margin: EdgeInsets.fromLTRB(36.h, 19.v, 36.h, 18.v))
        ]);
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return SizedBox(
        height: 271.v,
        width: 327.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAireJordanNike271x327,
              height: 271.v,
              width: 327.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 61.v,
                  width: 288.h,
                  margin: EdgeInsets.only(bottom: 8.v),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            height: 26.v,
                            width: 239.h,
                            margin: EdgeInsets.only(left: 18.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(119.h),
                                gradient: LinearGradient(
                                    begin: Alignment(0.94, 0.5),
                                    end: Alignment(0, 0.5),
                                    colors: [
                                      appTheme.black90000,
                                      appTheme.black90000.withOpacity(0.75)
                                    ])))),
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup48095698,
                        height: 35.v,
                        width: 288.h,
                        alignment: Alignment.bottomCenter)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildThirtySix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 70.adaptSize,
              width: 70.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 14.v),
              decoration: AppDecoration.fillOnPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: CustomImageView(
                  imagePath: ImageConstant.imgAireJordanNike41x67,
                  height: 41.v,
                  width: 67.h,
                  alignment: Alignment.center)),
          Container(
              height: 70.adaptSize,
              width: 70.adaptSize,
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: CustomImageView(
                  imagePath: ImageConstant.imgAireJordanNike68x68,
                  height: 68.adaptSize,
                  width: 68.adaptSize,
                  alignment: Alignment.center)),
          Container(
              height: 70.adaptSize,
              width: 70.adaptSize,
              padding: EdgeInsets.symmetric(vertical: 14.v),
              decoration: AppDecoration.fillOnPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: CustomImageView(
                  imagePath: ImageConstant.imgAireJordanNike41x68,
                  height: 41.v,
                  width: 68.h,
                  alignment: Alignment.center)),
          Container(
              height: 70.adaptSize,
              width: 70.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 14.v),
              decoration: AppDecoration.fillOnPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: CustomImageView(
                  imagePath: ImageConstant.imgAireJordanNike1,
                  height: 41.v,
                  width: 67.h,
                  alignment: Alignment.center))
        ]));
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Wrap(
        runSpacing: 19.v,
        spacing: 19.h,
        children: List<Widget>.generate(5, (index) => TwentytwoItemWidget()));
  }

  /// Section Widget
  Widget _buildThirtyFour(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 39.h, bottom: 40.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Precio",
                            style: CustomTextStyles.labelLargeBluegray700),
                        Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text("359",
                                style: theme.textTheme.headlineLarge))
                      ])),
              CustomElevatedButton(
                  width: 200.h,
                  text: "AÑADIR",
                  margin: EdgeInsets.only(left: 27.h),
                  rightIcon: Container(
                      margin: EdgeInsets.only(left: 14.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgBag,
                          height: 19.v,
                          width: 16.h)))
            ]));
  }

  /// Navigates to the iphone14ProFourScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProFourScreen);
  }
}
