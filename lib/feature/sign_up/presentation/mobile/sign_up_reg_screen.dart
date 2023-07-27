import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/presentation/bloc/business_card_list/business_card_list_bloc.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/presentation/mobile/sign_up_reg_select_business_screen.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/presentation/mobile/widgets/business_card.dart';

import '../../../../utils/injector.dart';

class SignUpRegisterScreenWrapper extends StatelessWidget {
  const SignUpRegisterScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BusinessCardListBloc>(
            create: (context) => sl<BusinessCardListBloc>()),
      ],
      child: SignUpRegisterScreen(),
    );
  }
}

class SignUpRegisterScreen extends StatefulWidget {
  const SignUpRegisterScreen({super.key});

  @override
  State<SignUpRegisterScreen> createState() => _SignUpRegisterScreenState();
}

class _SignUpRegisterScreenState extends State<SignUpRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/normal/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 55.h,
                    left: 22.w,
                    right: 27.w,
                    bottom: 30.h,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50.w,
                        height: 50.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xfffed629),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(13.w),
                          child: SvgPicture.asset(
                            'images/svg/iconlyLightArrowLeft.svg',
                            // width: 24.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 83.w,
                          right: 102.w,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 34.w,
                              height: 34.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xffffffff),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(9.w),
                                child: Text(
                                  "01",
                                  style: TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Gilroy",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.0.sp,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 14.w,
                            ),
                            Container(
                              width: 34.w,
                              height: 34.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xffffffff),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(9.w),
                                child: Text(
                                  "02",
                                  style: TextStyle(
                                    color: const Color(0xffa7a7a7),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Gilroy",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.0.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset('images/svg/iconlyLightMessage.svg')
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sign up
                  Text(
                    "Sign up ",
                    style: TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Gilroy",
                      fontStyle: FontStyle.normal,
                      fontSize: 32.0.sp,
                    ),
                  ),
                  // You activity can be
                  Padding(
                    padding: EdgeInsets.only(
                      top: 21.h,
                      bottom: 34.h,
                    ),
                    child: Text(
                      "You activity can be changed through\nSettings later.",
                      style: TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontSize: 13.0.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Rectangle_1
            Expanded(
              child: Column(
                children: [
                  BusinessSelect(),
                ],
              ),
            )
            // Padding(
            //   padding: EdgeInsets.only(
            //     left: 14.w,
            //     bottom: 28.h,
            //   ),
            //   child: InkWell(
            //     onTap: () => _show(context),
            //     child: Container(
            //       width: 362.w,
            //       height: 80.h,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.all(Radius.circular(20)),
            //         border:
            //             Border.all(color: const Color(0xff979797), width: 0.25),
            //         color: const Color(0xffffffff),
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Padding(
            //             padding: EdgeInsets.only(
            //               left: 26.w,
            //               top: 17.h,
            //             ),
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 // Select Business
            //                 Text(
            //                   "Select Business",
            //                   style: TextStyle(
            //                     color: const Color(0xff999999),
            //                     fontWeight: FontWeight.w400,
            //                     fontFamily: "Poppins",
            //                     fontStyle: FontStyle.normal,
            //                     fontSize: 12.0.sp,
            //                   ),
            //                 ),
            //                 // Coffee Bean ( Meleno
            //                 Text(
            //                   "Coffee Bean ( Melenor Streer, City )",
            //                   style: TextStyle(
            //                     color: const Color(0xff2e2e2e),
            //                     fontWeight: FontWeight.w400,
            //                     fontFamily: "Poppins",
            //                     fontStyle: FontStyle.normal,
            //                     fontSize: 15.0.sp,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.only(
            //               right: 25,
            //             ),
            //             child: SvgPicture.asset('images/svg/groupCopy4.svg'),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  // void _show(BuildContext ctx) {
  //   showModalBottomSheet(
  //     isScrollControlled: true,
  //     // barrierColor: Colors.white.withOpacity(0.3),
  //     // backgroundColor: Colors.transparent,
  //     context: ctx,
  //     builder: (context) {
  //       return BlocProvider.value(value: BlocProvider.of<BusinessCardListBloc>(context),child: SelectBusinessScreen(),);

  //     },
  //   );
  // }
}
