import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import 'package:equatable/equatable.dart';
import 'package:easy_localization/easy_localization.dart';

enum DefaultPasswordValidationErrorType {
  empty,
  notIdentical
}

class DefaultPasswordValidationError extends Equatable {
  final DefaultPasswordValidationErrorType errorType;
  final String message;

  const DefaultPasswordValidationError(
      {required this.errorType, required this.message});

  @override
  List<Object> get props => [errorType, message];
}

class DefaultPassword extends FormzInput<String, DefaultPasswordValidationError> {
  final String? comparableDefaultPassword; // This value is need pass when need to compare the two passwords. (to validate re-entered password is equals to original)

  const DefaultPassword.pure({this.comparableDefaultPassword}) : super.pure('');

  const DefaultPassword.dirty(super.value, {this.comparableDefaultPassword}) : super.dirty();

  @override
  DefaultPasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return DefaultPasswordValidationError(
          message: LocaleKeys.common_validations_passwordShouldNotEmpty.tr(),
          errorType: DefaultPasswordValidationErrorType.empty);
    } else if (comparableDefaultPassword != null && comparableDefaultPassword != value) {
      return DefaultPasswordValidationError(
          message: LocaleKeys.common_validations_passwordsNotMatch.tr(),
          errorType: DefaultPasswordValidationErrorType.notIdentical);
    }
    return null;
  }
}