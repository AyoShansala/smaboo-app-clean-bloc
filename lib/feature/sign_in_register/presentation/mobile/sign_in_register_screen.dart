import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smaboo_app_clean_bloc/core/presentation/mobile_reusable/custom_divider.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_in_register/presentation/mobile/widgets/custom_field_container.dart';
import 'package:smaboo_app_clean_bloc/utils/color.dart';

class SignInRegisterScreen extends StatelessWidget {
  const SignInRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5,
        sigmaY: 5,
      ),
      child: DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.85,
        builder: (context, scrollController) => GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
          child: Scaffold(
            body: Container(
              color: kWhite,
              child: Column(
                children: [
                  //cancel button, phone button and title
                  Padding(
                    padding: EdgeInsets.only(
                      top: 18.h,
                      bottom: 20.h,
                      left: 19.w,
                      right: 21.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 37.w,
                          height: 37.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kTimeRegionBoarder,
                          ),
                          child: SvgPicture.asset('images/svg/xCircleCopy.svg'),
                        ),
                        Text(
                          "Contact Support",
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            color: Color(0xff000000),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0,
                          ),
                        ),
                        SvgPicture.asset('images/svg/iconlyLightCall.svg')
                      ],
                    ),
                  ),
                  //divider
                  CustomDivider(
                    thickness: 0.7.w,
                  ),
                  // Rate Your Experience
                  Padding(
                    padding: EdgeInsets.only(
                      top: 27.h,
                      bottom: 24.h,
                    ),
                    child: Text(
                      "Rate Your Experience and leave a\ncomment to ensure consistant qulaity.",
                      style: TextStyle(
                        color: const Color(0xff5d5d5d),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontSize: 13.0.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // Name Field Rectangle
                  Container(
                    width: 362.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                      border: Border.all(
                        color: const Color(0xff979797),
                        width: 0.25.w,
                      ),
                      color: const Color(0xffffffff),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 27.w,
                        top: 17.h,
                        right: 25.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Your Name
                              Text(
                                "Your Name",
                                style: const TextStyle(
                                  color: const Color(0xff999999),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.0,
                                ),
                              ),
                              // Johan Doe Dolor
                              Text(
                                "Johan Doe Dolor",
                                style: const TextStyle(
                                  color: const Color(0xff2e2e2e),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 13.w,
                            ),
                            child:
                                SvgPicture.asset('images/svg/groupCopy4.svg'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 16.h,
                    ),
                    child: CustomFieldContainer(
                      hintTxt: 'Email',
                      fieldTxt: 'Email Address',
                      imgName: 'ovalCopy.svg',
                    ),
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
