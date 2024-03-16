import 'package:test_application/widgets/app_bar/custom_app_bar.dart';
import 'package:test_application/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:test_application/widgets/app_bar/appbar_title.dart';
import 'package:test_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:test_application/widgets/custom_text_form_field.dart';
import 'package:test_application/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:test_application/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProThreeScreen extends StatelessWidget {
  Iphone14ProThreeScreen({Key? key}) : super(key: key);

  TextEditingController tarjetasdeCreditoController = TextEditingController();

  TextEditingController twoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 27.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("Metodos de pago",
                                  style: CustomTextStyles.titleSmallGray600))),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: CustomTextFormField(
                              controller: tarjetasdeCreditoController,
                              hintText: "Tarjetas de Credito ")),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: CustomTextFormField(
                              controller: twoController,
                              hintText: "Google Pay / Apple Pay",
                              textInputAction: TextInputAction.done)),
                      SizedBox(height: 16.v),
                      Container(
                          width: 303.h,
                          margin: EdgeInsets.only(left: 16.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 21.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder32),
                          child: Text("Otros metodos de pago",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 37.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("Información de envio",
                                            style: CustomTextStyles
                                                .titleSmallSFProDisplayBluegray700)),
                                    SizedBox(
                                        height: 19.adaptSize,
                                        width: 19.adaptSize,
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgCloseBlueGray700,
                                                  height: 18.v,
                                                  width: 19.h,
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPath,
                                                  height: 5.adaptSize,
                                                  width: 5.adaptSize,
                                                  alignment:
                                                      Alignment.topRight),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPathBlueGray700,
                                                  height: 5.adaptSize,
                                                  width: 5.adaptSize,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                      top: 3.v, right: 3.h))
                                            ]))
                                  ]))),
                      SizedBox(height: 28.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Opacity(
                              opacity: 0.7,
                              child: Container(
                                  width: 222.h,
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: Text(
                                      "Calle del Pintor Stolz 54,\nValencia, Valencia 46018, España",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyLargeBluegray700
                                          .copyWith(height: 1.63))))),
                      SizedBox(height: 29.v),
                      Divider(indent: 16.h),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total items 2",
                                        style: theme.textTheme.bodyLarge),
                                    Text("758,00",
                                        style: theme.textTheme.bodyLarge)
                                  ]))),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Costos de envio",
                                    style: theme.textTheme.bodyLarge),
                                Text("10", style: theme.textTheme.bodyLarge)
                              ])),
                      SizedBox(height: 47.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 1.v, bottom: 7.v),
                                    child: Text("Total",
                                        style: CustomTextStyles
                                            .headlineSmallInterBluegray700)),
                                Text("758,10",
                                    style: theme.textTheme.headlineLarge)
                              ])),
                      SizedBox(height: 4.v)
                    ])),
            bottomNavigationBar: _buildPAGARAHORA(context)));
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
            AppbarTitle(text: "CHECKOUT", margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup20,
              margin: EdgeInsets.fromLTRB(36.h, 19.v, 36.h, 18.v))
        ]);
  }

  /// Section Widget
  Widget _buildPAGARAHORA(BuildContext context) {
    return CustomElevatedButton(
        text: "PAGAR AHORA",
        margin: EdgeInsets.only(left: 45.h, right: 46.h, bottom: 31.v),
        onPressed: () {
          onTapPAGARAHORA(context);
        });
  }

  /// Navigates to the iphone14ProTwoContainerScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwoContainerScreen);
  }

  /// Navigates to the iphone14ProFourScreen when the action is triggered.
  onTapPAGARAHORA(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProFourScreen);
  }
}
