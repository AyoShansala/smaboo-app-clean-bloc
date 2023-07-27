import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/color.dart';

class VerticalDividerContainer extends StatelessWidget {
  const VerticalDividerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: kDividerColor,
      thickness: 0.30.h,
      width: 0.1.h,
    );
  }
}
