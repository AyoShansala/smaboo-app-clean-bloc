import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smaboo_business_app/features/user_profile/presentation/tablet/widgets/profile_completion_tab.dart';
import 'package:smaboo_business_app/features/user_profile/presentation/tablet/widgets/profile_info_header.dart';
import 'package:smaboo_business_app/features/user_profile/presentation/tablet/widgets/user_info_tab.dart';

import '../../../../../core/presentation/common/shimmers/tablet/profile_completion_tab_shimmer.dart';
import '../../../../../utils/api_endpoints.dart';
import '../../bloc/profile_bloc.dart';

class UserProfileInfo extends StatelessWidget {
  final Function() onShowMyStatsTap;
  final Function() onHomeScreen;

  const UserProfileInfo({Key? key, required this.onShowMyStatsTap, required this.onHomeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.8.w, right: 4.7.w, top: 12.h),
      child: Container(
        padding: EdgeInsets.only(top: 5.7.h),
        // margin: EdgeInsets.only(left: 9.8.w, right: 4.7.w, top: 7.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileInfoHeader(
                onHomeScreen: onHomeScreen,
              ),
              BlocConsumer<ProfileBloc, ProfileState>(
                listener: (context, state) {},
                buildWhen: (prev, current) {
                  if (prev.status == ProfileStatus.initial && current.status == ProfileStatus.loading) {
                    return false;
                  } else {
                    return true;
                  }
                },
                builder: (context, state){
                  debugPrint("#2594 state.profileDetails?.image ${state.profileDetails?.image}");
                  return state.status == ProfileStatus.initial 
                  ? ProfileCompletionTabShimmer() 
                  : state.profileDetails?.image==null||
                    state.profileDetails?.image == "${ApiEndpoints.baseImageUrl}img/system_images/default-profile.png"
                      ? ProfileCompletionTab(onHomeScreen: onHomeScreen, profileState: state,)
                      : SizedBox();
                }
              ),
              // const ProfileCompletionTab(),
              UserInfoTab(onShowMyStatsTap: onShowMyStatsTap),
            ],
          ),
        ),
      ),
    );
  }
}
