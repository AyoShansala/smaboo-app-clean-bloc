import 'package:formz/formz.dart';
import 'package:flutter/material.dart';
import '../../locales/locale_keys.g.dart';
import '../../other/regular_expressions.dart';
import 'package:easy_localization/easy_localization.dart';

enum OTPValidationErrorType { empty, invalidCharacters, invalidLength }

class OTPValidationError {
  final OTPValidationErrorType? type;
  final String? message;

  OTPValidationError({this.type, this.message});
}

class OTP extends FormzInput<String, OTPValidationError> {
  const OTP.pure() : super.pure('');
  const OTP.dirty(super.value) : super.dirty();

  @override
  OTPValidationError? validator(String value) {
    debugPrint("value #7944 ${value.length}");
    if (value.isEmpty) {
      return OTPValidationError(type: OTPValidationErrorType.empty, message: LocaleKeys.features_signUp_validations_otpShouldNotEmpty.tr());
    }
    if (value.length != 6) {
      return OTPValidationError(type: OTPValidationErrorType.invalidLength, message: LocaleKeys.features_signUp_validations_validOtp.tr());
    }
    if (!RegularExpressions.numbersOnly.hasMatch(value)) {
      return OTPValidationError(type: OTPValidationErrorType.invalidCharacters, message: LocaleKeys.features_signUp_validations_validOtp.tr());
    }
    return null;
  }
}
