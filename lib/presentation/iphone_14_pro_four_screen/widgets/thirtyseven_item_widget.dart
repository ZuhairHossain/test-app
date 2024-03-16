import 'package:flutter/material.dart';
import 'package:test_application/core/app_export.dart';

// ignore: must_be_immutable
class ThirtysevenItemWidget extends StatelessWidget {
  const ThirtysevenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgAireJordanNike156x206,
        height: 156.v,
        width: 206.h,
      ),
    );
  }
}
