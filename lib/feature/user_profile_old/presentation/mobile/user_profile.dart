import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smaboo_business_app/features/user_profile/presentation/mobile/widgets/profile_shimmer.dart';
import 'package:smaboo_business_app/presentation/mobile/reusable/appBar/top_bar.dart';
import 'package:smaboo_business_app/features/user_profile/presentation/mobile/widgets/profile_card.dart';
import 'package:smaboo_business_app/features/user_profile/presentation/mobile/widgets/profile_completion_rate.dart';

import '../../../../injector.dart';
import '../../../../presentation/common/no_data_to_display.dart';
import '../../../../core/presentation/common/shimmers/booking_widget_shimmer.dart';
import '../../../../utils/font.dart';
import '../bloc/profile_bloc.dart';
import 'user_profile_edit.dart';

class UserProfileWrapper extends StatelessWidget {
  const UserProfileWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileBloc>(
          create: (context) => sl<ProfileBloc>(),
        ),
      ],
      child: UserProfile(),
    );
  }
}


class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  @override
  void initState() {
    // context.read<ProfileBloc>().add(ProfileEvent());
    BlocProvider.of<ProfileBloc>(context).add(ProfileEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.fill)),
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context,state){},
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
                Container(
                  color: Colors.white,
                  child: TopBar(
                    isTitleVisible: false,
                    onLeadingPress: (){
                      Navigator.pop(context);
                    },
                    trailingCount: TrailingCount.double,
                    trailIconTwoImg: 'images/iconlyLightEdit.png',
                    trailIconOneImg: 'images/iconlyLightMoreCircle.png',
                    onTrailingTwoPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditUserProfileWrapper(
                       username: "${state.profileDetails?.name}",
                          email: "${state.profileDetails?.email}",
                          address: "${state.profileDetails?.address}",
                          avatar: "${state.profileDetails?.image}",
                      )));
                    },
                    onTrailingOnePress: (){},
                    title: '',
                  ),
                ),
                const Divider(height: 0.5,),
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.0.w, top: 10.h, bottom: 13.h),
                        child: Image.asset(
                          'images/bell_icon.png',
                          height: 42.h,
                          width: 42.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 17.0.w),
                        child: Text("Your Profile", style: kGilroy21600(context)),
                      ),
                    ],
                  ),
                ),
                state.status == ProfileStatus.initial ? ProfileShimmer() : Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const ProfileCompletionRate(),
                        Container(
                            margin:
                            EdgeInsets.only(left: 11.0.w, right: 11.0.w, top: 18.h),
                            child: ProfileCard(
                              name: state.profileDetails?.name,
                              image: state.profileDetails?.image,
                              designation: state.profileDetails?.designation,
                              email: state.profileDetails?.email,
                              address: state.profileDetails?.address,
                              activeSince: state.profileDetails?.createdAt,
                              phone: state.profileDetails?.contactNumber,
                              accountType: state.profileDetails?.accountType,
                            )),
                        Container(
                          margin: EdgeInsets.only(top: 24.h, bottom: 12.h),
                          child: const Divider(),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 33.w, right: 30.w,bottom: 33.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 24.w),
                                    child: const CircleAvatar(
                                      backgroundImage:
                                      AssetImage('images/wad_placeholder.png'),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Store Profile",
                                          style: kPoppins15400(context)),
                                      Text("Coffee Brew", style: kPoppins20500(context)),
                                    ],
                                  ),
                                ],
                              ),
                              Image.asset(
                                'images/outline_forward_arrow.png',
                                height: 75.h,
                                width: 75.w,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )

              ],
            );
          },
        )
      ),
    );
  }
}

