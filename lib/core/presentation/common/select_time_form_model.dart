import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum TimeValidationErrorType {
  empty,
}

class TimeValidationError {
  final TimeValidationErrorType type;
  final String message;

  TimeValidationError({required this.type, required this.message});
}

class Time extends FormzInput<DateTime?, TimeValidationError> {
  const Time.pure() : super.pure(null);
  const Time.dirty(super.value) : super.dirty();

  @override
  TimeValidationError? validator(DateTime? value) {
    DateTime currentTime = DateTime.now();

    if(value == null) {
      return TimeValidationError(type: TimeValidationErrorType.empty, message: LocaleKeys.features_bookings_bookingInner_validation_selectTime.tr());
    }
    if(currentTime.isAfter(DateTime(currentTime.year, currentTime.month, currentTime.day, value.hour, value.minute))) {
      // print(currentTime);
      // print(DateTime(currentTime.year, currentTime.month, currentTime.day, value.hour, value.minute));
      return TimeValidationError(type: TimeValidationErrorType.empty, message: LocaleKeys.features_bookings_bookingInner_validation_selectUpcomingTime.tr());
    }
    return null;
  }
}