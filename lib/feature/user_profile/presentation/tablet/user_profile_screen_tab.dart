import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/locales/locale_keys.g.dart';
import '../../../../core/presentation/tablet_reusable/top_bar_tab/top_bar_tab.dart';
import 'package:smaboo_business_app/features/user_profile/presentation/tablet/widgets/user_profile_info.dart';

import '../../../../injector.dart';
import '../bloc/profile_bloc.dart';

class UserProfileTabWrapper extends StatelessWidget {
  final Function() topBarProfileTap;
  final Function() topBarSettingsTap;
  final Function() topBarSearchTap;
  final Function() onShowMyStatsTap;
  final Function() onHomeScreen;
  final Function() showBookings;
  const UserProfileTabWrapper({Key? key, required this.topBarProfileTap, required this.topBarSettingsTap, required this.onHomeScreen ,required this.topBarSearchTap, required this.onShowMyStatsTap, required this.showBookings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileBloc>(
          create: (context) => sl<ProfileBloc>()..add(ProfileEvent()),
        ),
      ],
      child: UserProfileTab(
          topBarProfileTap: topBarProfileTap,
          topBarSettingsTap: topBarSettingsTap,
          topBarSearchTap: topBarSearchTap,
          onHomeScreen: onHomeScreen,
          onShowMyStatsTap: onShowMyStatsTap,
          showBookings: showBookings,
          ),
    );
  }
}

class UserProfileTab extends StatelessWidget {
  final Function() topBarProfileTap;
  final Function() topBarSettingsTap;
  final Function() topBarSearchTap;
  final Function() onShowMyStatsTap;
  final Function() onHomeScreen;
  final Function() showBookings;

  const UserProfileTab({
    Key? key,
    required this.topBarProfileTap,
    required this.topBarSettingsTap,
    required this.topBarSearchTap,
    required this.onHomeScreen,
    required this.onShowMyStatsTap,
    required this.showBookings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          TopBarTab(
            title: LocaleKeys.features_profiles_ui_yourProfile.tr(),
            isSearchExtended: false,
            isCountOn: false,
            iconImg: 'images/usersIcon.png',
            isIconOn: true,
            onProfileTap: topBarProfileTap,
            onSettingsTap: topBarSettingsTap,
            onSearchTap: topBarSearchTap,
            showBookings: showBookings,
          ),
          UserProfileInfo(onShowMyStatsTap: onShowMyStatsTap, onHomeScreen: onHomeScreen,),
        ],
      ),
    );
  }
}
