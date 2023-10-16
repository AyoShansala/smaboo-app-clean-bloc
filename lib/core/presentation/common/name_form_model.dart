import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import '../../other/regular_expressions.dart';
import 'package:easy_localization/easy_localization.dart';

enum NameValidationErrorType {
  empty,
  invalidCharacters,
  invalidLength
}

class NameValidationError {
  final NameValidationErrorType? type;
  final String? message;

  NameValidationError({this.type, this.message});
}

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure() : super.pure('');
  const Name.dirty(super.value) : super.dirty();

  @override
  NameValidationError? validator(String value) {
    if(value.isEmpty) {
      return NameValidationError(type: NameValidationErrorType.empty, message: LocaleKeys.features_signUp_validations_nameShouldNotEmpty.tr());
    }
    // if(value.length<3) {
    //   return NameValidationError(type: NameValidationErrorType.invalidLength, message: LocaleKeys.features_signUp_validations_validNameLength.tr());
    // }
    if(!RegularExpressions.fullName.hasMatch(value)) {
      return NameValidationError(type: NameValidationErrorType.invalidCharacters, message: LocaleKeys.features_signUp_validations_validName.tr());
    }
    return null;
  }
}