import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/font.dart';

// ignore: must_be_immutable
class ProfileCardInfoTab extends StatelessWidget {
  String? title;
  String? content;
  bool showVerificationStatus = false;
  bool? verification;
  ProfileCardInfoTab({required String infoTitle, required String infoContent, bool? showVerification, required bool verficationStatus, Key? key}) : super(key: key) {
    title = infoTitle;
    content = infoContent;
    showVerificationStatus = verficationStatus;
    verification = showVerification;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.7.h, top: 18.h),
          child: Row(
            children: [
              Text(
                  "$title",
                  style: kGPoppins300(context)
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 100.w,
              child: Text(
                  "$content",
                  style: kPoppins4500(context)
              ),
            ),
            verification! ? showVerificationStatus ? Image.asset('images/completed_yellow.png', height: 7.h, width: 7.w,) : Image.asset('images/whiteTick.png', height: 7.h, width: 7.w,) : SizedBox(),
          ],
        ),
      ],
    );
  }


}