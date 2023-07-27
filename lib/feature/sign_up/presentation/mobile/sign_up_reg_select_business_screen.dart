import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smaboo_app_clean_bloc/core/presentation/mobile_reusable/custom_divider.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/domain/usecases/get_business_card_list.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/presentation/bloc/business_card_list/business_card_list_bloc.dart';
import 'package:smaboo_app_clean_bloc/utils/color.dart';
import '../../data/datasources/business_card_remote_data_source.dart';

class SelectBusinessScreen extends StatefulWidget {
  const SelectBusinessScreen({super.key});

  @override
  State<SelectBusinessScreen> createState() => _SelectBusinessScreenState();
}

class _SelectBusinessScreenState extends State<SelectBusinessScreen> {
  final TextEditingController searchController = TextEditingController();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   // BusinessCardRemoteDataSourceImpl().getBusinessCardList();
  //   //  context.read<BusinessCardListBloc>().add(BusinessCardSearched(keyWord: ''));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5,
        sigmaY: 5,
      ),
      child: DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.85,
        builder: (context, scrollController) => GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
          child: Scaffold(
            body: Container(
              color: kWhite,
              child: Column(
                children: [
                  //back button and title
                  Padding(
                    padding:
                        EdgeInsets.only(left: 14.w, right: 14.w, top: 22.h),
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
                              // height: 24.w,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 60.w,
                        ),
                        Text(
                          "Select Business",
                          style: TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Gilroy",
                            fontStyle: FontStyle.normal,
                            fontSize: 20.0.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //search field
                  Padding(
                    padding: EdgeInsets.only(top: 22.h, bottom: 29.h),
                    child: Container(
                      width: 362.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                        border: Border.all(
                            color: const Color(0xff979797), width: 0.25.w),
                        color: const Color(0xffffffff),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 19.w,
                          right: 29.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Type the name of Business & city",
                              style: TextStyle(
                                color: const Color(0xff2e2e2e),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontStyle: FontStyle.normal,
                                fontSize: 15.0.sp,
                              ),
                            ),
                            SvgPicture.asset('images/svg/iconlyLightSearch.svg')
                          ],
                        ),
                      ),
                    ),
                  ),
                  // CustomDivider
                  CustomDivider(
                    thickness: 0.4.w,
                  ),
                  //Listview
                  Expanded(
                    child: BlocBuilder<BusinessCardListBloc,
                        BusinessCardListState>(
                      // buildWhen: (previous, current) {
                      //   return (current is BusinessCardListItemSearchSuccess)
                      //       ? true
                      //       : false;
                      // },
                      builder: (context, state) {
                        return ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: state.businessCardList.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                    35.w,
                                    23.h,
                                    22.w,
                                    23.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 35.w,
                                        height: 35.w,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.r),
                                          child: Image.asset(
                                            'images/normal/bitmapCopy.png',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            state.businessCardList
                                                .elementAt(index)
                                                .name,
                                            style: TextStyle(
                                              color: const Color(0xff2e2e2e),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 15.0.w,
                                            ),
                                          ),
                                          Text(
                                            state.businessCardList
                                                .elementAt(index)
                                                .address,
                                            style: TextStyle(
                                              color: const Color(0xff2e2e2e),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Poppins",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 13.0.w,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 42.w,
                                        height: 42.w,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xfffed629),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(9.w),
                                          child: SvgPicture.asset(
                                            'images/svg/iconlyLightArrowRightCircle_2.svg',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomDivider(thickness: 0.4.w),
                              ],
                            );
                          },
                        );
                        // : Padding(
                        //     padding: EdgeInsets.only(bottom: 250.h),
                        //     child: Center(
                        //         //  child: NoDataToDisplay(
                        //         //    text: LocaleKeys.features_team_list_team_filter_notFound.tr(),
                        //         //  ),
                        //         ),
                        //   );
                      },
                    ),
                    // child: Column(
                    //   children: [
                    //     Padding(
                    //       padding: EdgeInsets.fromLTRB(35.w, 23.h, 22.w, 23.h),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           SizedBox(
                    //             width: 35.w,
                    //             height: 35.w,
                    //             child: ClipRRect(
                    //               borderRadius: BorderRadius.circular(100.r),
                    //               child: Image.asset(
                    //                 'images/normal/bitmapCopy.png',
                    //               ),
                    //             ),
                    //           ),
                    //           Column(
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Text(
                    //                 'Coffee Brew',
                    //                 style: TextStyle(
                    //                   color: const Color(0xff2e2e2e),
                    //                   fontWeight: FontWeight.w500,
                    //                   fontFamily: "Poppins",
                    //                   fontStyle: FontStyle.normal,
                    //                   fontSize: 15.0.w,
                    //                 ),
                    //               ),
                    //               Text(
                    //                 'Melenor Street,NY City',
                    //                 style: TextStyle(
                    //                   color: const Color(0xff2e2e2e),
                    //                   fontWeight: FontWeight.w400,
                    //                   fontFamily: "Poppins",
                    //                   fontStyle: FontStyle.normal,
                    //                   fontSize: 13.0.w,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //           Container(
                    //             width: 42.w,
                    //             height: 42.w,
                    //             decoration: const BoxDecoration(
                    //               shape: BoxShape.circle,
                    //               color: Color(0xfffed629),
                    //             ),
                    //             child: Padding(
                    //               padding: EdgeInsets.all(9.w),
                    //               child: SvgPicture.asset(
                    //                 'images/svg/iconlyLightArrowRightCircle_2.svg',
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     CustomDivider(thickness: 0.4.w),
                    //   ],
                    // ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
