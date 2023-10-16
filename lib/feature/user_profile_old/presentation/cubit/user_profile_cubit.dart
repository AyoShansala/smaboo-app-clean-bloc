import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'user_profile_state.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit() : super(UpdataProfileInitial());

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final FocusNode emailNode = FocusNode();
  final FocusNode addressNode = FocusNode();
  final FocusNode usernameNode = FocusNode();

  @override
  Future<void> close() {
    usernameController.dispose();
    addressController.dispose();
    emailController.dispose();
    return super.close();
  }
}
