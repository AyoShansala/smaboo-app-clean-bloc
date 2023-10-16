import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import '../../other/regular_expressions.dart';
import 'package:easy_localization/easy_localization.dart';

enum EmailValidationErrorType {
  empty,
  invalid,
}

class EmailValidationError {
  final EmailValidationErrorType type;
  final String message;

  EmailValidationError({required this.type, required this.message});
}

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty(super.value) : super.dirty();

  @override
  EmailValidationError? validator(String value) {
    if(value.isEmpty) {
      return EmailValidationError(type: EmailValidationErrorType.empty, message: LocaleKeys.common_validations_emailShouldNotEmpty.tr());
    }
    if(!RegularExpressions.email.hasMatch(value)) {
      return EmailValidationError(type: EmailValidationErrorType.invalid, message: LocaleKeys.common_validations_enterValidEmail.tr());
    }
    return null;
  }
}