// import 'package:flutter/material.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


// class ButtonFilled extends StatelessWidget {
//   final String text;
//   final Function()? onPress;
//   final double width;
//   final double height;
//   final bool isLoading;
//   final bool isMobile;
//   final Color bgColor;
//   final Color textColor;
//   final bool underline;
//   final bool isRectangle;

//   const ButtonFilled({
//     Key? key,
//     required this.text,
//     required this.onPress,
//     this.width = 250,
//     this.height = 60,
//     required this.isLoading,
//     this.isMobile = true,
//     this.underline = false,
//     this.bgColor = Colors.black,
//     this.textColor = Colors.white,
//     this.isRectangle = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Bounce(
//       borderRadius: isMobile ? 15.r : 15,
//       onTap: onPress,
//       child: Container(
//           width: width.w,
//           height: isRectangle ? height.h : height.w,
//           padding: EdgeInsets.symmetric(horizontal: isMobile ? 10.w : 2.w),
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             color: bgColor,
//             borderRadius: BorderRadius.circular(isMobile ? 15.r : 15)
//           ),
//           child: isLoading
//               ? const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(kAccent))
//               : Text(
//                   text,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: textColor,
//                       fontWeight: FontWeight.w400,
//                       fontFamily: "Gilroy",
//                       fontStyle: FontStyle.normal,
//                       fontSize: isMobile ? 16.sp : 6.sp,
//                       decoration: underline ? TextDecoration.underline : TextDecoration.none,
//                   ),
//                 ).tr(),
//       ),
//     );
//   }
// }