import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import '../../other/regular_expressions.dart';
import 'package:easy_localization/easy_localization.dart';

enum PhoneNumberValidationErrorType {
  empty,
  invalid,
  invalidCharacters,
}

class PhoneNumberValidationError {
  final PhoneNumberValidationErrorType type;
  final String message;

  PhoneNumberValidationError({required this.type, required this.message});
}

class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumber.pure() : super.pure('');
  const PhoneNumber.dirty(super.value) : super.dirty();

  @override
  PhoneNumberValidationError? validator(String value) {
    if(value.isEmpty) {
      return PhoneNumberValidationError(type: PhoneNumberValidationErrorType.empty, message: LocaleKeys.features_signUp_validations_phoneNumberShouldNotEmpty.tr());
    } 
    if(!RegularExpressions.phoneNumber.hasMatch(value)) {
      return PhoneNumberValidationError(type: PhoneNumberValidationErrorType.invalidCharacters, message: LocaleKeys.features_signUp_validations_validPhone.tr());
    }
    if(!value.startsWith("+")) {
      return PhoneNumberValidationError(type: PhoneNumberValidationErrorType.invalid, message: LocaleKeys.features_signUp_validations_countryCodePhone.tr());
    }
    return null;
  }
}