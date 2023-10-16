import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum DateValidationErrorType {
  empty,
}

class DateValidationError {
  final DateValidationErrorType type;
  final String message;

  DateValidationError({required this.type, required this.message});
}

class Date extends FormzInput<String?, DateValidationError> {
  const Date.pure() : super.pure(null);
  const Date.dirty(super.value) : super.dirty();

  @override
  DateValidationError? validator(String? value) {
    if(value == null) {
      return DateValidationError(type: DateValidationErrorType.empty, message: LocaleKeys.features_bookings_close_booking_validation_selectDate.tr());
    }
    return null;
  }
}