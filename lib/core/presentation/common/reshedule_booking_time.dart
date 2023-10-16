import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import 'manual_booking/manual_booking_time.dart';
import 'package:easy_localization/easy_localization.dart';

enum RescheduleBookingTimeValidationErrorType {
  empty,
}

class RescheduleBookingTimeValidationError {
  final RescheduleBookingTimeValidationErrorType type;
  final String message;

  RescheduleBookingTimeValidationError({required this.type, required this.message});
}

class RescheduleBookingTimeForm extends FormzInput<ManualBookingTimeParam?, RescheduleBookingTimeValidationError> {
  const RescheduleBookingTimeForm.pure() : super.pure(null);
  const RescheduleBookingTimeForm.dirty(super.value) : super.dirty();

  @override
  RescheduleBookingTimeValidationError? validator(ManualBookingTimeParam? value) {
    DateTime currentTime = DateTime.now();
    if(value == null) {
      return RescheduleBookingTimeValidationError(type: RescheduleBookingTimeValidationErrorType.empty, message: LocaleKeys.features_bookings_bookingInner_validation_selectTime.tr());
    }
    if(value.manualBookingDate?.year == 1111) {
      return RescheduleBookingTimeValidationError(type: RescheduleBookingTimeValidationErrorType.empty, message: LocaleKeys.features_bookings_bookingInner_validation_selectDateFirst.tr());
    }
    if(currentTime.isAfter(DateTime(value.manualBookingDate?.year ?? 0, value.manualBookingDate?.month ?? 0, value.manualBookingDate?.day ?? 0, value.manualBookingTime?.hour ?? 0,  value.manualBookingTime?.minute ?? 0))) {
      return RescheduleBookingTimeValidationError(type: RescheduleBookingTimeValidationErrorType.empty, message: LocaleKeys.features_bookings_bookingInner_validation_selectUpcomingTime.tr());
    }
    return null;
  }
}
