import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFieldContainer extends StatelessWidget {
  const CustomFieldContainer(
      {super.key, this.hintTxt, this.fieldTxt, this.imgName});

  final String? hintTxt;
  final String? fieldTxt;
  final String? imgName;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  hintTxt!,
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
                  fieldTxt!,
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
              child: SvgPicture.asset('images/svg/$imgName'),
            )
          ],
        ),
      ),
    );
  }
}
