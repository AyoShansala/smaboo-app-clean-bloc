import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum RegistrationCodeValidationErrorType {
  empty,
  invalidLength,
}

// RegistrationCode
class RegistrationCodeValidationError {
  final RegistrationCodeValidationErrorType type;
  final String message;

  RegistrationCodeValidationError({required this.type, required this.message});
}

class RegistrationCodeForm extends FormzInput<String, RegistrationCodeValidationError> {
  const RegistrationCodeForm.pure() : super.pure('');
  const RegistrationCodeForm.dirty(super.value) : super.dirty();

  @override
  RegistrationCodeValidationError? validator(String value) {
    if (value.isEmpty) {
      return RegistrationCodeValidationError(
        type: RegistrationCodeValidationErrorType.empty,
        message: LocaleKeys.features_signUp_validations_codeShouldNotEmpty.tr(),
      );
    }
    if (value.length != 8) {
      return RegistrationCodeValidationError(type: RegistrationCodeValidationErrorType.invalidLength, message: LocaleKeys.features_signUp_validations_validCode.tr());
    }
    return null;
  }
}
