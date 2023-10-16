import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/presentation/mobile_reusable/text_field.dart';
import '../../../../core/presentation/mobile_reusable/top_bar.dart';
import '../../../../utils/injector.dart';
import '../bloc/update_profile/update_profile_bloc.dart';
import '../cubit/user_profile_cubit.dart';
import 'alerts/update_success_alert.dart';
import 'widgets/profile_avatar.dart';

class EditUserProfileWrapper extends StatelessWidget {
  final String username;
  final String email;
  final String address;
  final String? avatar;
  const EditUserProfileWrapper(
      {Key? key,
      required this.username,
      required this.email,
      required this.address,
      this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UpdateProfileBloc>(
          create: (context) => sl<UpdateProfileBloc>(),
        ),
        BlocProvider<UserProfileCubit>(
          create: (context) => sl<UserProfileCubit>(),
        ),
      ],
      child: EditUserProfile(
        username: username,
        email: email,
        avatar: avatar,
        address: address,
      ),
    );
  }
}

class EditUserProfile extends StatelessWidget {
  final String username;
  final String email;
  final String address;
  final String? avatar;
  const EditUserProfile(
      {Key? key,
      required this.username,
      required this.email,
      required this.address,
      this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/normal/bg.png'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: TopBar(
                onLeadingPress: () {
                  Navigator.pop(context);
                },
                title: 'Edit Profile',
                trailIconOneImg: '',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 28.h, left: 59.w, right: 59.w),
              child: Text(
                "Tick and arrange the stats to be shown on your landing page",
                // style: kPoppins14300(context),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 21.0.h),
              child: ProfileAvatar(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0.h),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  'images/iconlyLightCamera.png',
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0.h, bottom: 20.h),
              child: Divider(),
            ),
            Container(
              margin: EdgeInsets.only(left: 14.w, right: 14.w, bottom: 16.h),
              padding: EdgeInsets.only(top: 15.h, bottom: 17.h),
              child: BlocSelector<UpdateProfileBloc, UpdateProfileState, bool>(
                selector: (state) {
                  print("asddasdad ${state}");
                  return state.username.isNotEmpty ? true : false;
                },
                builder: (context, state) {
                  // return TextFormField(
                  //   onChanged: (text) {
                  //     debugPrint(text);
                  //     context
                  //         .read<UpdateProfileBloc>()
                  //         .add(UsernameChanged(text.trim()));
                  //   },
                  //   controller:
                  //       context.read<UserProfileCubit>().usernameController,
                  // );
                  return CustomTextField(
                    hint: 'Username',
                    textController:
                        context.read<UserProfileCubit>().usernameController,
                    onChanged: (text) {
                      debugPrint(text);
                      debugPrint("asd=> ${text.isEmpty.toString()}");
                      context
                          .read<UpdateProfileBloc>()
                          .add(UsernameChanged(text.trim()));
                    },
                    // isValid: email.valid,
                    // errorText: email.pure ? null : email.error?.message,
                  );
                },
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 14.w, right: 14.w, bottom: 16.h),
                padding: EdgeInsets.only(top: 15.h, bottom: 17.h),
                // child: TextFormField(
                //   onChanged: (text) {
                //     debugPrint(text);
                //     context
                //         .read<UpdateProfileBloc>()
                //         .add(EmailChange(text.trim()));
                //   },
                //   controller: context.read<UserProfileCubit>().emailController,
                // ),
                child: CustomTextField(
                  hint: 'Email Address',
                  textController:
                      context.read<UserProfileCubit>().emailController,
                  onChanged: (text) {
                    debugPrint(text);
                    context
                        .read<UpdateProfileBloc>()
                        .add(EmailChange(text.trim()));
                  },
                  // isValid: email.valid,
                  // errorText: email.pure ? null : email.error?.message,
                )),
            Container(
                margin: EdgeInsets.only(left: 14.w, right: 14.w, bottom: 16.h),
                padding: EdgeInsets.only(top: 15.h, bottom: 17.h),
                // child: TextFormField(
                //   onChanged: (text) {
                //     debugPrint(text);
                //     context
                //         .read<UpdateProfileBloc>()
                //         .add(AddressChanged(text.trim()));
                //   },
                //   controller: context.read<UserProfileCubit>().addressController,
                // ),
                child: CustomTextField(
                  hint: 'Your Address',
                  textController:
                      context.read<UserProfileCubit>().addressController,
                  onChanged: (text) {
                    debugPrint(text);
                    context
                        .read<UpdateProfileBloc>()
                        .add(AddressChanged(text.trim()));
                  },
                  // isValid: email.valid,
                  // errorText: email.pure ? null : email.error?.message,
                )),
            // Padding(
            //   padding: EdgeInsets.only(top: 25.0.h),
            //   child: ButtonFilled(
            //       text: 'Update Profile',
            //       isLoading: false,
            //       onPress: (){
            //         showDialog(
            //             context: context,
            //             builder: (BuildContext context) => UpdateSuccessAlert());
            //       },),
            // )
            Padding(
              padding: EdgeInsets.only(top: 25.0.h),
              child: BlocConsumer<UpdateProfileBloc, UpdateProfileState>(
                listener: (context, state) {
                  if (state.status == UpdateProfileStatus.success) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            UpdateSuccessAlert());
                  }
                },
                builder: (context, state) {
                  return TextButton(
                    onPressed: () {
                      context
                          .read<UpdateProfileBloc>()
                          .add(UpdateProfileRequest());
                    },
                    child: Text("Update Profile"),
                  );
                  // return ButtonFilled(
                  //   text: 'Update Profile',
                  //   isLoading: false,
                  //   onPress: () {
                  //     context
                  //         .read<UpdateProfileBloc>()
                  //         .add(UpdateProfileRequest());
                  //     // showDialog(
                  //     //     context: context,
                  //     //     builder: (BuildContext context) => UpdateSuccessAlert());
                  //   },
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
