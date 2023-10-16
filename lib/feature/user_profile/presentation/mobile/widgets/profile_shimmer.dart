import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../../../../utils/color.dart';
import 'profile_avatar.dart';
import 'profile_card_info_container.dart';

class ProfileShimmer extends StatelessWidget {
  const ProfileShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.h,
          margin: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 18.h,
          ),
          padding: EdgeInsets.only(
            top: 20.h,
            bottom: 20.h,
            left: 23.w,
            right: 23.w,
          ),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SleekCircularSlider(
                    initialValue: 80,
                    min: 0,
                    max: 100,
                    appearance: CircularSliderAppearance(
                      size: 50,
                      angleRange: 360,
                      infoProperties: InfoProperties(
                        mainLabelStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      customColors: CustomSliderColors(
                        progressBarColor: const Color(0xfffed629),
                        trackColor: Colors.black,
                      ),
                      customWidths: CustomSliderWidths(
                        progressBarWidth: 3,
                        trackWidth: 3,
                        handlerSize: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                    child: Text(
                      "Complete Your Profile ! You are almost there!",
                      // style: kwPoppins14400(context),
                    ),
                  ),
                  Image.asset(
                    'images/normal/group3Copy.png',
                    height: 30.h,
                    width: 30.w,
                  ),
                ],
              )),
        ),
        Container(
          height: 500.h,
          margin: EdgeInsets.only(left: 11.0.w, right: 11.0.w, top: 18.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 27.w, right: 20.w, bottom: 18.0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileAvatar(),
                        TextButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xfffed629)),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.only(
                                left: 22.w,
                                right: 22.w,
                                top: 5.h,
                                bottom: 5.h,
                              ),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            )),
                          ),
                          child: Text(
                            'N/A',
                            // style: kPoppins14400(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 27.w, right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "N/A",
                          // style: kGilroy22600(context),
                        ),
                        Text(
                          "N/A",
                          // style: kGPoppins11400(
                          //   context,
                          // ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 27.w, right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "",
                          // style: kGPoppins14400(context),
                        ),
                        Text(
                          "",
                          // style: kPoppins14500(context),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 18.0.h, bottom: 18.0.h),
                    child: const Divider(),
                  ),
                  ProfileCardInfo("Phone Number", "N/A", true),
                  Padding(
                    padding: EdgeInsets.only(top: 18.0.h, bottom: 18.0.h),
                    child: const Divider(),
                  ),
                  ProfileCardInfo("Email Address", "N/A", true),
                  Padding(
                    padding: EdgeInsets.only(top: 18.0.h, bottom: 18.0.h),
                    child: const Divider(),
                  ),
                  ProfileCardInfo("Address", "N/A", true),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0.h, bottom: 30.0.h),
                    child: const Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 18.0.w),
                              child: Image.asset(
                                'images/normal/iconlyLightActivity.png',
                                height: 24.h,
                                width: 24.w,
                              ),
                            ),
                            Text(
                              "Show my Stats",
                              style: TextStyle(
                                color: kBlack,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Gilroy',
                                fontStyle: FontStyle.normal,
                                fontSize: 16.sp,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
