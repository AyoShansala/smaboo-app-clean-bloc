import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smaboo_business_app/features/user_profile/presentation/mobile/widgets/profile_avatar.dart';
import 'package:smaboo_business_app/features/user_profile/presentation/mobile/widgets/profile_card_info_container.dart';
import 'package:smaboo_business_app/utils/font.dart';

import '../../../../../utils/colors.dart';

class ProfileCard extends StatelessWidget {
  final String? name;
  final String? email;
  final String? phone;
  final String? image;
  final String? address;
  final String? activeSince;
  final String? designation;
  final String? accountType;

  const ProfileCard({Key? key,
    this.name, this.email,
    this.phone, this.image,
    this.address,
    this.activeSince,
    this.accountType,
    this.designation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 19.0.h),
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(left:  27.w, right: 20.w, bottom: 18.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileAvatar(),
                TextButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xfffed629)),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.only(
                            left: 22.w,
                            right: 22.w,
                            top: 5.h,
                            bottom: 5.h)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                  ),
                  child: Text(
                    '${designation == "" ? "N/A" : designation}',
                    style: kPoppins14400(context),
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
                    name!,
                    style: kGilroy22600(context)
                ),
                Text(
                    "Active since",
                    style: kGPoppins11400(context)
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
                    accountType!,
                    style: kGPoppins14400(context)
                ),
                Text(
                    activeSince!.split(' ')[0],
                    style: kPoppins14500(context)
                ),
            ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 18.0.h, bottom: 18.0.h),
            child: const Divider(),
          ),
         ProfileCardInfo("Phone Number", phone == "" ? "N/A" : phone!, true),
          Padding(
            padding: EdgeInsets.only(top: 18.0.h, bottom: 18.0.h),
            child: const Divider(),
          ),
          ProfileCardInfo("Email Address", email == "" ? "N/A" : email!, true),
          Padding(
            padding: EdgeInsets.only(top: 18.0.h, bottom: 18.0.h),
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
                      child: Image.asset('images/iconlyLightActivity.png', height: 24.h, width: 24.w,),
                    ),
                    Text(
                        "Show my Stats",
                        style: TextStyle(
                            color: kBlack,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy',
                            fontStyle: FontStyle.normal,
                            fontSize: 16.sp)
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
