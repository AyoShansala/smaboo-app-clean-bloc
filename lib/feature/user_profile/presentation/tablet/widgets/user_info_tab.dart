import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smaboo_business_app/features/user_profile/presentation/tablet/widgets/profile_card_info_tab.dart';
// import 'package:smaboo_business_app/utils/font.dart';

import '../../../../../core/locales/locale_keys.g.dart';
import '../../../../../core/presentation/common/shimmers/tablet/profile_tab_shimmer.dart';
import '../../bloc/profile_bloc.dart';

class UserInfoTab extends StatelessWidget {
  final Function() onShowMyStatsTap;

  const UserInfoTab({Key? key, required this.onShowMyStatsTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {},
      buildWhen: (prev, current) {
        if (prev.status == ProfileStatus.initial && current.status == ProfileStatus.loading) {
          return false;
        } else {
          return true;
        }
      },
      builder: (context, state){
        return state.status == ProfileStatus.initial ? ProfileTabShimmer() : 
        Container(
      margin: EdgeInsets.only(
        left: 19.w,
        right: 9.w,
        top: state.profileDetails?.image != null ? 0 : 5.h,
      ),
      padding: EdgeInsets.only(
        top: state.profileDetails?.image!=null?0:6.h,
        bottom: 7.h,
        right: 8.0.w,
      ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileCardInfoTab(infoTitle: LocaleKeys.features_bookings_ui_contactNumber.tr(), infoContent: state.profileDetails?.contactNumber == '' ? "N/A" : '${state.profileDetails?.contactNumber}', verficationStatus: true, showVerification: true),
                  ProfileCardInfoTab(infoTitle: LocaleKeys.common_ui_emailAddress.tr(), infoContent: state.profileDetails?.email == '' ? "N/A" : '${state.profileDetails?.email}', verficationStatus: true, showVerification: true),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  state.profileDetails!.address!.isEmpty ? Container() : ProfileCardInfoTab(infoTitle: LocaleKeys.features_profiles_ui_address.tr(), infoContent: state.profileDetails?.address == '' ? "N/A" : '${state.profileDetails?.address}', verficationStatus: true, showVerification: true),
                  // ProfileCardInfoTab(infoTitle: 'Date of Birth', infoContent: '${state.profileDetails?.dob}', verficationStatus: true, showVerification: true),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 18.h, bottom: 10.h),
                child: const Divider(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: onShowMyStatsTap,
                      child: Row(
                        children: [
                          Image.asset('images/iconlyLightActivity.png', height: 8.h, width: 8.w),
                          SizedBox(width: 6.w),
                          Text(LocaleKeys.features_profiles_ui_showMyStats.tr(), style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontSize: 5.7.sp)
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
