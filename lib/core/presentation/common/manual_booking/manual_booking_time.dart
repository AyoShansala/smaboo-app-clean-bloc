import 'package:formz/formz.dart';
import 'package:equatable/equatable.dart';
import '../../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum ManualBookingTimeValidationErrorType {
  empty,
}

class ManualBookingTimeValidationError {
  final ManualBookingTimeValidationErrorType type;
  final String message;

  ManualBookingTimeValidationError({required this.type, required this.message});
}

class ManualBookingTimeForm extends FormzInput<ManualBookingTimeParam?, ManualBookingTimeValidationError> {
  const ManualBookingTimeForm.pure() : super.pure(null);
  const ManualBookingTimeForm.dirty(super.value) : super.dirty();

  @override
  ManualBookingTimeValidationError? validator(ManualBookingTimeParam? value) {
    DateTime currentTime = DateTime.now();

    if(value == null) {
      return ManualBookingTimeValidationError(type: ManualBookingTimeValidationErrorType.empty, message: LocaleKeys.features_bookings_bookingInner_validation_selectTime.tr());
    }
    if(value.manualBookingDate?.year == 1111) {
      return ManualBookingTimeValidationError(type: ManualBookingTimeValidationErrorType.empty, message: LocaleKeys.features_bookings_bookingInner_validation_selectDateFirst.tr());
    }
    if(value.manualBookingTime?.year == 1110) {
      return ManualBookingTimeValidationError(type: ManualBookingTimeValidationErrorType.empty, message: LocaleKeys.features_bookings_bookingInner_validation_selectTime.tr());
    }
    if(currentTime.isAfter(DateTime(value.manualBookingDate?.year ?? 0, value.manualBookingDate?.month ?? 0, value.manualBookingDate?.day ?? 0, value.manualBookingTime?.hour ?? 0,  value.manualBookingTime?.minute ?? 0))) {
      return ManualBookingTimeValidationError(type: ManualBookingTimeValidationErrorType.empty, message: LocaleKeys.features_bookings_bookingInner_validation_selectUpcomingTime.tr());
    }
    return null;
  }
}

class ManualBookingTimeParam extends Equatable {
  final DateTime? manualBookingTime;
  final DateTime? manualBookingDate;

  const ManualBookingTimeParam({
    this.manualBookingTime,
    this.manualBookingDate,
  });

  @override
  List<Object?> get props => [manualBookingTime, manualBookingDate];

}
