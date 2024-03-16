import 'package:test_application/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:test_application/core/app_export.dart';

class Iphone14ProOneScreen extends StatelessWidget {
  const Iphone14ProOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 20.v),
                child: Column(children: [
                  _buildFrameFourteen(context),
                  SizedBox(height: 76.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 258.h,
                          margin: EdgeInsets.only(left: 40.h),
                          child: Text("LA CARRERA ACABA DE COMENZAR",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.displayMedium!
                                  .copyWith(height: 1.02)))),
                  SizedBox(height: 8.v),
                  _buildFiftySeven(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildCOMPRAAHORA(context)));
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
  Widget _buildFiftySeven(BuildContext context) {
    return SizedBox(
        height: 389.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgNikeShoe,
              height: 339.v,
              width: 393.h,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 36.v,
                  width: 339.h,
                  margin: EdgeInsets.only(bottom: 102.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(169.h),
                      gradient: LinearGradient(
                          begin: Alignment(0.94, 0.5),
                          end: Alignment(0, 0.5),
                          colors: [
                            appTheme.black90000.withOpacity(0.7),
                            appTheme.black90000.withOpacity(0.7)
                          ])))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: 282.h,
                  margin: EdgeInsets.only(left: 40.h),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum volutpat massa, vitae mattis lectus placerat nec.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeErrorContainer
                          .copyWith(height: 1.29))))
        ]));
  }

  /// Section Widget
  Widget _buildCOMPRAAHORA(BuildContext context) {
    return CustomElevatedButton(
        height: 72.v,
        text: "COMPRA AHORA",
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 56.v),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 15.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgMusic, height: 24.v, width: 18.h)),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.headlineSmallOnPrimary_1,
        onPressed: () {
          onTapCOMPRAAHORA(context);
        });
  }

  /// Navigates to the iphone14ProTwoContainerScreen when the action is triggered.
  onTapCOMPRAAHORA(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwoContainerScreen);
  }
}
