import 'package:formz/formz.dart';
import 'manual_booking_time.dart';
import '../../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum ManualBookingDateValidationErrorType {
  empty,
}

class ManualBookingDateValidationError {
  final ManualBookingDateValidationErrorType type;
  final String message;

  ManualBookingDateValidationError({required this.type, required this.message});
}

class ManualBookingDateForm extends FormzInput<ManualBookingTimeParam?, ManualBookingDateValidationError> {
  const ManualBookingDateForm.pure() : super.pure(null);
  const ManualBookingDateForm.dirty(super.value) : super.dirty();

  @override
  ManualBookingDateValidationError? validator(ManualBookingTimeParam? value) {
    // DateTime currentDate = DateTime.now();
    // print('ManualBookingDateForm --> $value');
    if(value == null) {
      return ManualBookingDateValidationError(type: ManualBookingDateValidationErrorType.empty, message: LocaleKeys.features_bookings_close_booking_validation_selectDate.tr());
    }
    return null;
  }
}


