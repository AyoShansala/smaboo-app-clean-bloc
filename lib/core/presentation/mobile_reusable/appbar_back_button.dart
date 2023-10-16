import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/color.dart';
import '../../locales/locale_keys.g.dart';

class AppBarBackButton extends StatelessWidget {
  final Function() onPress;
  final bool isMobile;
  final String? title;

  const AppBarBackButton({Key? key, required this.onPress, this.isMobile = true, this.title = 'back'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(isMobile ? 8.r : 0),
      child: Container(
        width: isMobile ? 80.w : null,
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(vertical: isMobile ? 5.h : 0),
        child: Center(
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: onPress,
            child: Ink(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.keyboard_arrow_left, color: kBlack, size: isMobile ? 24.w : 12.w),
                  SizedBox(width: isMobile ? 5.w : 0),
                  Text(
                    title == 'back'
                      ? LocaleKeys.common_ui_back.tr()
                      : LocaleKeys.common_ui_clear.tr(),
                    // style: isMobile
                    //     ? kPoppins12400(context)
                    //     : kPoppins18500(context, isMobile: isMobile),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}