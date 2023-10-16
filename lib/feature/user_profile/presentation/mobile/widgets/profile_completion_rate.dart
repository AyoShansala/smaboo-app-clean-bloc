import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ProfileCompletionRate extends StatelessWidget {
  const ProfileCompletionRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(20))),
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
            'images/normal/group15.png',
            height: 30.h,
            width: 30.w,
          ),
        ],
      ),
    );
  }
}
