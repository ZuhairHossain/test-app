import 'package:flutter/material.dart';
import 'package:test_application/core/app_export.dart';

// ignore: must_be_immutable
class TwentythreeItemWidget extends StatelessWidget {
  const TwentythreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 269.v,
      width: 290.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgAireJordanNike,
        height: 260.v,
        width: 290.h,
        alignment: Alignment.center,
      ),
    );
  }
}
