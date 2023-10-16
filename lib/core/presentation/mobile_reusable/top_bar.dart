
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smaboo_app_clean_bloc/core/presentation/mobile_reusable/appbar_back_button.dart';

import '../../../utils/color.dart';


class TopBar extends StatelessWidget {
  final String? title;
  final bool isTitleVisible;
  final Function() onLeadingPress;
  final LeadingType leadingType;
  final TrailingCount trailingCount;
  final Function()? onTrailingTwoPress;
  final String? trailIconTwoImg;
  final bool? notification;

  const TopBar({
    Key? key,
    this.title,
    this.notification = false,
    this.isTitleVisible = true,
    required this.onLeadingPress,
    this.leadingType = LeadingType.back,
    this.trailingCount = TrailingCount.none,
    this.onTrailingTwoPress,
    this.trailIconTwoImg, required String trailIconOneImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102.h,
      color: notification == false ? kCalendarBackGround : Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 15.h, left: 18.w, right: 18.w),
            child: Stack(
              alignment: Alignment.center,
              children: [
                /// leading
                Align(
                  alignment: Alignment.centerLeft,
                  child: leadingType == LeadingType.back
                      ? AppBarBackButton(onPress: onLeadingPress)
                      : leadingType == LeadingType.menu
                          ? Container(
                              color: Colors.transparent,
                              margin: EdgeInsets.only(bottom: 5.h),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                onTap: onLeadingPress,
                                child: Image.asset(
                                  'images/menu_icon_appbar.png',
                                  width: 22.w,
                                  height: 28.w,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            )
                          : leadingType == LeadingType.clear
                              ? AppBarBackButton(title: 'Clear', onPress: onLeadingPress)
                              : Container(),
                ),
                /// title
                isTitleVisible == true
                    ? title != null
                        ? Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: ScreenUtil().screenWidth / 2,
                              child: AutoSizeText(
                                "$title",
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                minFontSize: 15,
                                overflow: TextOverflow.ellipsis,
                                // style: kGilroy18600(context),
                              ),
                            ),
                        )
                        : const SizedBox()
                    : Container(),
                /// trailing
                trailingCount == TrailingCount.none
                    ? Container()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          trailingCount == TrailingCount.double
                              ? GestureDetector(
                                  onTap: onTrailingTwoPress,
                                  child: Image.asset(
                                      trailIconTwoImg!,
                                      height: 24.w,
                                      width: 24.w,
                                  ),
                                )
                              : Container(),
                        ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum LeadingType { back, menu, clear }

enum TrailingCount { none, single, double }
