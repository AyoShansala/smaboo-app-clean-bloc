import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/font.dart';

// ignore: must_be_immutable
class ProfileInfoEdit extends StatelessWidget {
  String? title;
  String? content;
  bool showLabel = true;
  ProfileInfoEdit({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 5.3.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xff979797), width: 0.25.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.0.h, left: 9.0.w),
            child: Text('$title', style: kGPoppins4400(context),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 9.0.w),
            child: TextField(
              onTap: () {
                showLabel = false;
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                hintText: '$content',
                hintStyle: kPoppins5300(context)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
