import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smaboo_app_clean_bloc/core/presentation/mobile_reusable/custom_divider.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_in_register/presentation/mobile/widgets/custom_field.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_in_register/presentation/mobile/widgets/custom_field_container.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_in_register/presentation/mobile/widgets/inquire_field.dart';
import 'package:smaboo_app_clean_bloc/utils/color.dart';

class ContactSupportScreen extends StatefulWidget {
  const ContactSupportScreen({super.key});

  @override
  State<ContactSupportScreen> createState() => _ContactSupportScreenState();
}

class _ContactSupportScreenState extends State<ContactSupportScreen> {
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
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
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
                          Padding(
                            padding: EdgeInsets.only(
                              top: 16.h,
                            ),
                            child: CustomField(
                              fieldTxt: 'Your Name',
                              imgName: 'ovalCopy.svg',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 16.h,
                            ),
                            child: CustomField(
                              fieldTxt: 'Email Address',
                              imgName: 'ovalCopy.svg',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 16.h,
                            ),
                            child: CustomField(
                              fieldTxt: 'Phone Number',
                              imgName: 'ovalCopy.svg',
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 16.h),
                            child: CustomInquireField(
                              fieldTxt: 'Your Inquiry Here',
                              imgName: 'ovalCopy.svg',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 28.h,
                              bottom: 34.h,
                            ),
                            child: SvgPicture.asset('images/svg/send.svg'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
