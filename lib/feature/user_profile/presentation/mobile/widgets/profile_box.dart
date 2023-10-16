import 'package:flutter/material.dart';
import '../../../../../utils/font.dart';
import '../../../../../utils/colors.dart';
import '../../../../../core/locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 19.h, bottom: 21.h),
            child: Image.asset(
              'images/bell_icon.png',
              height: 43.w,
              width: 42.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.w),
            child: Text(
              LocaleKeys.features_profiles_ui_yourProfile.tr(),
              style: kGilroy21600(context),
            ),
          ),
        ],
      ),
    );
  }
}
