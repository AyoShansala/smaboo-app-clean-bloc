import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/presentation/bloc/business_card_list/business_card_list_bloc.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/presentation/mobile/sign_up_reg_select_business_screen.dart';

class BusinessSelect extends StatefulWidget {
  const BusinessSelect({super.key});

  @override
  State<BusinessSelect> createState() => _BusinessSelectState();
}

class _BusinessSelectState extends State<BusinessSelect> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: 14.w,
          bottom: 28.h,
        ),
        child: BlocConsumer<BusinessCardListBloc, BusinessCardListState>(
          listener: (context, state) {
            if (state is BusinessCardListLoadInProgress) {
              const CircularProgressIndicator();
            } else if (state is BusinessCardListLoadFailure) {
            } else if (state is BusinessCardListLoadSuccess) {
              _show(context);
            }
          },
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                if (state is BusinessCardListInitial ||
                    state is BusinessCardListLoadFailure) {
                  context
                      .read<BusinessCardListBloc>()
                      .add(BusinessCardListOpened());
                } else {
                  _show(context);
                }
              },
              child: Container(
                width: 362.w,
                height: 80.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border:
                      Border.all(color: const Color(0xff979797), width: 0.25),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 26.w,
                        top: 17.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Select Business
                          Text(
                            "Select Business",
                            style: TextStyle(
                              color: const Color(0xff999999),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 12.0.sp,
                            ),
                          ),
                          // Coffee Bean ( Meleno
                          Text(
                            "Coffee Bean ( Melenor Streer, City )",
                            style: TextStyle(
                              color: const Color(0xff2e2e2e),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 15.0.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 25,
                      ),
                      child: SvgPicture.asset('images/svg/groupCopy4.svg'),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }

  void _show(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      barrierColor: Colors.white.withOpacity(0.3),
      backgroundColor: Colors.transparent,
      // constraints: BoxConstraints(maxHeight: 700.h),
      useSafeArea: true,
      isDismissible: true,
      context: context,
      builder: (_) {
        return BlocProvider.value(
          value: BlocProvider.of<BusinessCardListBloc>(context),
          child: SelectBusinessScreen(),
        );
      },
    );
  }
}
