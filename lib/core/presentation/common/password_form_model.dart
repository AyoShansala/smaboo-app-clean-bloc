import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import 'package:equatable/equatable.dart';
import '../../other/regular_expressions.dart';
import 'package:easy_localization/easy_localization.dart';

enum PasswordValidationErrorType {
  empty,
  notIdentical
}

class PasswordValidationError extends Equatable {
  final PasswordValidationErrorType errorType;
  final String message;

  const PasswordValidationError(
      {required this.errorType, required this.message});

  @override
  List<Object> get props => [errorType, message];
}

class Password extends FormzInput<String, PasswordValidationError> {
  final String? comparablePassword; // This value is need pass when need to compare the two passwords. (to validate re-entered password is equals to original)

  const Password.pure({this.comparablePassword}) : super.pure('');

  const Password.dirty(super.value, {this.comparablePassword}) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if(!RegularExpressions.passwordCharacters.hasMatch(value)) {
      return PasswordValidationError(errorType: PasswordValidationErrorType.notIdentical, message: LocaleKeys.features_signUp_validations_passwordLeast8.tr());
    }
    
    if(!RegularExpressions.PasswordUppercase.hasMatch(value)) {
      return PasswordValidationError(errorType: PasswordValidationErrorType.notIdentical, message: LocaleKeys.features_signUp_validations_passwordLeastUppercase.tr());
    }
    
    if(!RegularExpressions.PasswordLowercase.hasMatch(value)) {
      return PasswordValidationError(errorType: PasswordValidationErrorType.notIdentical, message: LocaleKeys.features_signUp_validations_passwordLeastLowercase.tr());
    }
    
    if(!RegularExpressions.PasswordSpecial.hasMatch(value)) {
      return PasswordValidationError(errorType: PasswordValidationErrorType.notIdentical, message: LocaleKeys.features_signUp_validations_passwordLeastSpecial.tr());
    }

    if (value.isEmpty) {
      return PasswordValidationError(message: LocaleKeys.common_validations_passwordShouldNotEmpty.tr(), errorType: PasswordValidationErrorType.empty);
    } else if (comparablePassword != null && comparablePassword != value) {
      return PasswordValidationError(message: LocaleKeys.common_validations_passwordsNotMatch.tr(), errorType: PasswordValidationErrorType.notIdentical);
    }
    return null;
  }
}