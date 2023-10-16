import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomInquireField extends StatelessWidget {
  const CustomInquireField({
    super.key,
    this.hintTxt,
    this.fieldTxt,
    this.imgName,
  });

  final String? hintTxt;
  final String? fieldTxt;
  final String? imgName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362.w,
      height: 194.h,
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
          top: 24.h,
          right: 25.w,
          bottom: 27.h,
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(
              fieldTxt!,
              style: TextStyle(
                color: const Color(0xff2e2e2e),
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 15.0.sp,
              ),
            ),
          ),
        ),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text(
        //       fieldTxt!,
        //       style: TextStyle(
        //         color: const Color(0xff2e2e2e),
        //         fontWeight: FontWeight.w400,
        //         fontFamily: "Poppins",
        //         fontStyle: FontStyle.normal,
        //         fontSize: 15.0.sp,
        //       ),
        //     ),
        //     SvgPicture.asset('images/svg/$imgName')
        //   ],
        // ),
      ),
    );
  }
}
