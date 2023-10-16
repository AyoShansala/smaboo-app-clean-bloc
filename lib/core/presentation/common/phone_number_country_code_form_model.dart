import 'package:formz/formz.dart';
import '../../../utils/globals.dart';
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

class PhoneNumberCountryCode extends FormzInput<PhoneNumberDetails, PhoneNumberValidationError> {
  const PhoneNumberCountryCode.pure(super.value) : super.pure();
  const PhoneNumberCountryCode.dirty(super.value) : super.dirty();

  @override
  PhoneNumberValidationError? validator(PhoneNumberDetails value) {
    if(value.body.isEmpty) {
      return PhoneNumberValidationError(type: PhoneNumberValidationErrorType.empty, message: LocaleKeys.features_signUp_validations_phoneNumberShouldNotEmpty.tr());
    }
    if(!RegularExpressions.phoneNumberCountryCode.hasMatch(value.body)) {
      return PhoneNumberValidationError(type: PhoneNumberValidationErrorType.invalidCharacters, message: LocaleKeys.features_signUp_validations_validPhone.tr());
    }
    if(!Globals.countryCodes.any((countryCode) => value.countryCode.contains(countryCode))) {
      return PhoneNumberValidationError(type: PhoneNumberValidationErrorType.invalid, message: LocaleKeys.features_signUp_validations_countryCodePhone.tr());
    }
    return null;
  }
}

class PhoneNumberDetails {
  final String countryCode;
  final String body;

  const PhoneNumberDetails({
    required this.countryCode,
    required this.body,
  });
}