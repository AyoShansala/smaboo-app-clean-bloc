import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ProfileCardInfo extends StatelessWidget {
  String? title;
  String? content;
  bool showVerificationStatus = false;
  final bool isMobile;
  ProfileCardInfo(String infoTitle, String infoContent, bool verficationStatus,
      {Key? key, this.isMobile = true})
      : super(key: key) {
    title = infoTitle;
    content = infoContent;
    showVerificationStatus = verficationStatus;
  }

  @override
  Widget build(BuildContext context) {
    // Change to text form
    return Container(
      margin: EdgeInsets.only(top: 5.3.h),
      decoration: isMobile
          ? BoxDecoration()
          : BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: const Color(0xff979797), width: 0.25.w),
            ),
      child: Column(
        children: [
          Padding(
            padding: isMobile
                ? EdgeInsets.only(left: 27.w, bottom: 5.0.h)
                : EdgeInsets.only(left: 9.w, bottom: 0.w),
            child: Row(
              children: [
                Text(
                  "$title",
                  //style: kGPoppins14300(context, isMobile: isMobile),
                ),
              ],
            ),
          ),
          Padding(
            padding: isMobile
                ? EdgeInsets.only(left: 27.w, right: 20.w)
                : EdgeInsets.only(left: 9.w, right: 9.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: isMobile ? 250.w : 120.w,
                  child: Text(
                    "$content",
                    // style: kPoppins16500(
                    //   context,
                    //   isMobile: isMobile,
                    // ),
                  ),
                ),
                SizedBox(
                  width: isMobile ? 250.w : 120.w,
                  child: isMobile
                      ? Text(
                          "$content",
                          //style: kPoppins16500(context, isMobile: isMobile),
                        )
                      : TextField(
                          // style: kPoppins16500(context, isMobile: isMobile),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '$content',
                            // hintStyle:
                            //     kPoppins16500(context, isMobile: isMobile),
                          ),
                        ),
                ),
                showVerificationStatus
                    ? Image.asset(
                        'images/normal/group4Copy.png',
                        height: 21.h,
                        width: 21.w,
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
