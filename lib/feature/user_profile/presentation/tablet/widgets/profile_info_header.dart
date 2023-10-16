import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/presentation/common/shimmers/tablet/profile_info_header_tab.dart';
import '../../../../../core/presentation/mobile_reusable/custom_divider.dart';
import '../../../../../core/presentation/mobile_reusable/vertical_divider.dart';
import '../../../../../../core/presentation/tablet_reusable/side_menu_alert/side_menu_alert_container.dart';
import '../../../../../../core/presentation/tablet_reusable/side_menu_alert/side_menu_alert_topbar_tab.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/font.dart';
import '../../bloc/profile_bloc.dart';
import '../../mobile/widgets/profile_avatar.dart';
import '../user_profile_edit_tab.dart';
import 'package:smaboo_business_app/core/locales/locale_keys.g.dart';

class ProfileInfoHeader extends StatelessWidget {
  final Function() onHomeScreen;
  final bool isVerticalLine;
  const ProfileInfoHeader({Key? key, required this.onHomeScreen, this.isVerticalLine = true}) : super(key: key);

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
        return Column(
          children: [
            state.status == ProfileStatus.initial ? ProfileInforTabShimmer() : IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 21.7.w,
                        width: 21.7.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              offset: Offset(2,2),
                              blurRadius: 5,
                              spreadRadius: 0,
                            ),
                          ],
                          color: kWhite,
                        ),
                        child: ProfileAvatar(
                          isMobile: false,
                          hasBorder: true,
                          networkImage: state.profileDetails?.image,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.7.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('${state.profileDetails?.name}', style: kGilroy7600(context)),
                            Text('${state.profileDetails?.designation}', style: kGPoppins4400(context)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(LocaleKeys.features_profiles_ui_activeSince.tr(), style: kGPoppins4400(context)),
                      Text(DateFormat("dd MMM yyyy").format(DateTime.parse("${state.profileDetails?.createdAt}")), style: kPoppins4500(context))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(LocaleKeys.features_profiles_ui_accountType.tr(), style: kGPoppins4400(context)),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: const Color(0xfffed629),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                          child:
                          Text('${state.profileDetails?.accountType}', style: kPoppins4500(context)),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
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
                              email: "${state.profileDetails?.email}",
                              username: "${state.profileDetails?.name}",
                              avatar: "${state.profileDetails?.image}",
                              phone: "${state.profileDetails?.contactNumber}",
                              onHomeScreen: onHomeScreen,
                            ),
                          ));
                    },
                    child: Row(
                      children: [
                        const VerticalDividerContainer(),
                        Padding(
                          padding: EdgeInsets.only(left: 14.0.w, right: 6.w),
                          child: Text(LocaleKeys.features_profiles_ui_editProfie.tr(), style: kGilroy5400(context)),// translate
                        ),
                        Image.asset(
                          'images/iconlyLightEdit.png',
                          height: 8.h,
                          width: 8.w,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            isVerticalLine ? Container(
              padding: EdgeInsets.symmetric(vertical: 5.3.h),
              child: /// CustomDivider
              CustomDivider(thickness: 0.4.w), //WARN: check if this is needed
            ) : Container(),
          ],
        );
    }
    );
  }
}
