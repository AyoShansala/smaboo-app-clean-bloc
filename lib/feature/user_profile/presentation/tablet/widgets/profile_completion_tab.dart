import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:smaboo_business_app/features/user_profile/presentation/bloc/profile_bloc.dart';

import '../../../../../core/locales/locale_keys.g.dart';
import '../../../../../core/presentation/tablet_reusable/side_menu_alert/side_menu_alert_container.dart';
import '../../../../../core/presentation/tablet_reusable/side_menu_alert/side_menu_alert_topbar_tab.dart';
import '../../../../../utils/font.dart';
import '../user_profile_edit_tab.dart';

class ProfileCompletionTab extends StatelessWidget {
  final Function() onHomeScreen;
  final ProfileState profileState;

  const ProfileCompletionTab({Key? key, required this.onHomeScreen, required this.profileState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 19.w,
        right: 9.w,
        top: 5.h,
      ),
      padding: EdgeInsets.only(
        top: 6.h,
        bottom: 7.h,
        right: 8.0.w,
      ),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 9.0.w),
                child: SleekCircularSlider(
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
              ),
              Container(
                width: 200.w,
                padding: EdgeInsets.only(left: 6.w),
                child: Text(LocaleKeys.features_profiles_ui_completeProfile.tr(),
                  style: kwPoppins4400(context),),
              ),
            ],
          ),
          GestureDetector(
              child: Image.asset('images/arrow_forward.png', height: 10.h, width: 10.w,),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => SideMenuContainerTab(
                    topBar: SideMenuTopBar(
                        title: LocaleKeys.features_profiles_ui_editProfie.tr(),
                        onBackPress: () {
                          Navigator.pop(context);
                        }),
                    body: UserProfileEditTabWrapper(
                      email: "${profileState.profileDetails?.email}",
                      username: "${profileState.profileDetails?.name}",
                      avatar: "${profileState.profileDetails?.image}",
                      phone: "${profileState.profileDetails?.contactNumber}",
                      onHomeScreen: onHomeScreen,
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
