// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smaboo_business_app/utils/font.dart';
import '../../../../core/blocs/basic_info/basic_info_bloc.dart';
import '../../../../core/locales/locale_keys.g.dart';
import '../../../../core/models/form_models/email_form_model.dart';
import '../../../../core/models/form_models/name_form_model.dart';
import '../../../../core/models/form_models/phone_number_form_model.dart';
import '../../../../core/presentation/common/button_filled.dart';
import '../../../../core/presentation/common/custom_flush_bar.dart';
import '../../../../injector.dart';
import '../../../../utils/colors.dart';
import '../../../vendor_profile/presentation/mobile/widgets/profile_text_field.dart';
import '../bloc/update_profile/update_profile_bloc.dart';
import '../cubit/user_profile_cubit.dart';
import '../mobile/alerts/update_success_alert.dart';
import '../mobile/widgets/profile_avatar.dart';

class UserProfileEditTabWrapper extends StatelessWidget {
  final String username;
  final String email;
  final String avatar;
  final String phone;
  final Function() onHomeScreen;
  const UserProfileEditTabWrapper({Key? key, required this.username, required this.onHomeScreen,
    required this.email, required this.avatar, required this.phone}) : super(key: key);

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
      child: UserProfileEditTab(
        username: username,
        email: email,
        avatar: avatar,
        phone: phone,
        onHomeScreen: onHomeScreen,
      ),
    );
  }
}


class UserProfileEditTab extends StatefulWidget {
  final String? username;
  final String? email;
  final String? avatar;
  final String? phone;
  final Function()? onHomeScreen;
  const UserProfileEditTab({Key? key, this.username, this.email, this.avatar, this.phone, this.onHomeScreen}) : super(key: key);

  @override
  State<UserProfileEditTab> createState() => _UserProfileEditTabState();
}

class _UserProfileEditTabState extends State<UserProfileEditTab> {
  PickedFile? image;

  @override
  void initState() {
    context.read<UserProfileCubit>().usernameController.text = widget.username ?? '';
    context.read<UserProfileCubit>().emailController.text = widget.email ?? '';
    context.read<UserProfileCubit>().phoneNumberController.text = widget.phone ?? '';
    super.initState();
  }

  _imgFromCamera() async {
    image = await ImagePicker.platform.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (!mounted) return;
    context.read<UpdateProfileBloc>().add(ProfilePicChanged("${image?.path}"));
  }

  _imgFromGallery() async {
    image = await ImagePicker.platform.pickImage(source: ImageSource.gallery, imageQuality: 50);
    if (!mounted) return;
    context.read<UpdateProfileBloc>().add(ProfilePicChanged("${image?.path}"));
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.photo_library),
                    title: Text(
                      LocaleKeys.common_ui_galley.tr(),
                      textScaleFactor: 1,
                    ),
                    onTap: () {
                      _imgFromGallery();
                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: Icon(Icons.photo_camera),
                  title: Text(
                    LocaleKeys.common_ui_camera.tr(),
                    textScaleFactor: 1,
                  ),
                  onTap: () {
                    _imgFromCamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5.h),
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              LocaleKeys.features_profiles_ui_updateProfile.tr(),
              style: kGPoppins4400(context),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: BlocConsumer<UpdateProfileBloc, UpdateProfileState>(
              listener: (context, state) {},
              builder: (context, state){
                return state.image == ''
                    ? Container(
                        height: 40.3.w,
                        width: 40.3.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:  kWhite,
                        ),
                        child: ProfileAvatar(
                          hasBorder: true,
                          networkImage: "${widget.avatar}",
                        ),
                      )
                    : Container(
                        height: 40.3.w,
                        width: 40.3.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:  kWhite,
                        ),
                        child: ProfileAvatar(
                          hasBorder: true,
                          avatarPic: state.image,
                        ),
                      );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0.h),
            child: InkWell(
                onTap: () {
                  _showPicker(context);
                },
              child: Image.asset(
                'images/iconlyLightCamera.png',
                height: 8.h,
                width: 8.w,
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0.h),
            child: Divider(),
          ),
          Container(
              padding: EdgeInsets.only(left: 4.w, top: 8.h, right: 6.w),
            child: BlocSelector<UpdateProfileBloc, UpdateProfileState, Name>(
              selector: (state) {
                return state.username;
              },
              builder: (context, name) {
                return VendorProfileTextField(
                  isMobile: false,
                  hint: LocaleKeys.features_signUp_ui_yourName.tr(),
                  textController: context.read<UserProfileCubit>().usernameController,
                  focusNode: context.read<UserProfileCubit>().usernameNode,
                  keyboardType: TextInputType.name,
                  autofillHints: const [AutofillHints.name],
                  textInputAction: TextInputAction.next,
                  onChanged: (text) {
                    debugPrint(text);
                    debugPrint("asd=> ${text.isEmpty.toString()}");
                    context.read<UpdateProfileBloc>().add(UsernameChanged(text.trim()));
                  },
                  onSubmitted: (text) {
                    FocusScope.of(context).requestFocus(context.read<UserProfileCubit>().emailNode);
                  },
                  isValid: name.valid,
                  errorText: name.pure ? null : name.error?.message,
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 4.w, top: 8.h, right: 6.w),
            child: BlocSelector<UpdateProfileBloc, UpdateProfileState, Email>(
              selector: (state) {
                return state.email;
              },
              builder: (context, name) {
                return VendorProfileTextField(
                  isMobile: false,
                  hint: LocaleKeys.common_ui_emailAddress.tr(),
                  textController: context.read<UserProfileCubit>().emailController,
                  focusNode: context.read<UserProfileCubit>().emailNode,
                  keyboardType: TextInputType.name,
                  autofillHints: const [AutofillHints.name],
                  textInputAction: TextInputAction.next,
                  onChanged: (text) {
                    debugPrint(text);
                    debugPrint("asd=> ${text.isEmpty.toString()}");
                    context.read<UpdateProfileBloc>().add(EmailChange(text.trim()));
                  },
                  onSubmitted: (text) {
                    FocusScope.of(context).requestFocus(context.read<UserProfileCubit>().emailNode);
                  },
                  isValid: name.valid,
                  errorText: name.pure ? null : name.error?.message,
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 4.w, top: 8.h, right: 6.w),
            child: BlocSelector<UpdateProfileBloc, UpdateProfileState, PhoneNumber>(
              selector: (state) {
                return state.telNo;
              },
              builder: (context, phoneNo) {
                return VendorProfileTextField(
                  isMobile: false,
                  hint: LocaleKeys.common_ui_phoneNumber.tr(),
                  textController: context.read<UserProfileCubit>().phoneNumberController,
                  focusNode: context.read<UserProfileCubit>().phoneNumberNode,
                  keyboardType: TextInputType.number,
                  autofillHints: const [AutofillHints.name],
                  textInputAction: TextInputAction.next,
                  onChanged: (text) {
                    debugPrint(text);
                    debugPrint("asd=> ${text.isEmpty.toString()}");
                    context.read<UpdateProfileBloc>().add(PhoneNumberChange(text.trim()));
                  },
                  onSubmitted: (text) {
                    FocusScope.of(context).requestFocus(context.read<UserProfileCubit>().phoneNumberNode);
                  },
                  isValid: phoneNo.valid,
                  errorText: phoneNo.pure ? null : phoneNo.error?.message,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0.h),
            child: Divider(),
          ),
          BlocConsumer<UpdateProfileBloc, UpdateProfileState>(
            listener: (context, state) {
              if (state.status == FormzStatus.submissionInProgress) {
                EasyLoading.show(status: LocaleKeys.features_signUp_alerts_pleaseWait.tr(), dismissOnTap: false);
              } else if (state.status == FormzStatus.submissionSuccess) {
                EasyLoading.dismiss();
                Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (BuildContext context) => UpdateSuccessAlert(
                      onHomeScreen: widget.onHomeScreen,
                      isMobile: false,
                      description: LocaleKeys.common_ui_profileUpdateSuccess.tr(),
                    ));
                context.read<BasicInfoBloc>().add(UserInfoUpdated(image: state.image));
              } else if (state.status == FormzStatus.submissionFailure) {
                EasyLoading.dismiss();
                CustomFlushBar.primary(context: context, message: state.errorMessage ?? LocaleKeys.errors_server_someThingWentWrong.tr());
              }
            },
            builder: (context, state){
              return Padding(
                padding: EdgeInsets.only(left: 0.w, top: 2.h, right: 0.w),
                child: ButtonFilled(
                  text: LocaleKeys.features_profiles_ui_updateProfileHeading.tr(),
                  onPress: () {
                    if (context.read<UserProfileCubit>().usernameController.text == widget.username) {
                      context.read<UpdateProfileBloc>().add(UsernameChanged(widget.username ?? ''));
                    }
                    if (context.read<UserProfileCubit>().emailController.text == widget.email) {
                      context.read<UpdateProfileBloc>().add(EmailChange(widget.email ?? ''));
                    }
                    if (image?.path == "" || image?.path == null) {
                      context.read<UpdateProfileBloc>().add(ProfilePicChanged("${widget.avatar}"));
                    }
                    if (context.read<UserProfileCubit>().phoneNumberController.text == widget.phone) {
                      context.read<UpdateProfileBloc>().add(PhoneNumberChange(widget.phone ?? ''));
                    }
                    context.read<UpdateProfileBloc>().add(UpdateProfileRequest());

                  },
                  isLoading: false,
                  height: 23,
                  width: 70,
                  isMobile: false,
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0.h),
            child: Divider(),
          ),

        ],
      ),
    );
  }
}

