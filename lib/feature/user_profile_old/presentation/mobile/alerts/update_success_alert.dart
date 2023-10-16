import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smaboo_business_app/utils/font.dart';

class UpdateSuccessAlert extends StatelessWidget {
  const UpdateSuccessAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Dialog(
          insetPadding: EdgeInsets.only(left: 0.w, right: 0.w),
          elevation: 0,
          alignment: Alignment.bottomCenter,
          backgroundColor: Colors.white,
          child: Container(
            color: Colors.black,
            width: double.infinity,
            height: 350.h,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 24.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 11.0.w),
                            child: Image.asset(
                              'images/iconlyLightInfoCircle.png',
                              height: 28.h,
                              width: 28.w,
                            ),
                          ),
                          Text("Update Success", style: kWGilroy20500(context)),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: const Divider(
                    color: Color(0xff3b3b3b),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 35.0.w, right: 35.w, top: 28.h),
                  child: Text(
                    "Your issue report has been sent successfuly to smaboo, we will get in touch soon.sorry for the inconvenience",
                    style: kwPoppins14400(context),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 282.w,
                  margin: EdgeInsets.only(top: 38.h),
                  padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 22.h, bottom: 22.h),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Text(
                    'Back to Home',
                    style: kWGilroy16400(context),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          )
          //)
          ),
    );
  }
}
