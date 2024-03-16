import 'package:flutter/material.dart';
import 'package:test_application/core/app_export.dart';

// ignore: must_be_immutable
class TwentytwoItemWidget extends StatelessWidget {
  const TwentytwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 13.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "8",
        style: TextStyle(
          color: theme.colorScheme.onPrimary,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray100,
      selectedColor: theme.colorScheme.onPrimaryContainer,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
