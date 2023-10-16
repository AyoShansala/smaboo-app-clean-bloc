import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum NoteValidationErrorType {
  empty,
}

class NoteValidationError {
  final NoteValidationErrorType? type;
  final String? message;

  NoteValidationError({this.type, this.message});
}

class Note extends FormzInput<String, NoteValidationError> {
  const Note.pure() : super.pure('');
  const Note.dirty(super.value) : super.dirty();

  @override
  NoteValidationError? validator(String value) {
    if(value.isEmpty) {
      return NoteValidationError(type: NoteValidationErrorType.empty, message: LocaleKeys.features_signUp_validations_nameShouldNotEmpty.tr());
    }
    return null;
  }
}