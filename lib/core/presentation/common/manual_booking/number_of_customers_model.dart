import 'package:formz/formz.dart';
import '../../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum NumberOfCustomersValidationErrorType {
  empty,
  invalid,
}

class NumberOfCustomersValidationError {
  final NumberOfCustomersValidationErrorType? type;
  final String? message;

  NumberOfCustomersValidationError({this.type, this.message});
}

class NoOfCustomers extends FormzInput<NumberOfCustomersValidationParameters, NumberOfCustomersValidationError> {
  const NoOfCustomers.pure(super.value) : super.pure();
  const NoOfCustomers.dirty(super.value) : super.dirty();

  @override
  NumberOfCustomersValidationError? validator(NumberOfCustomersValidationParameters value) {
    if (value.numberOfCustomer.isEmpty) {
      return NumberOfCustomersValidationError(
          type: NumberOfCustomersValidationErrorType.empty,
          message: LocaleKeys.features_bookings_validations_pleaseEnterNumberOfCustomer.tr());
    }
    if (value.numberOfCustomer == '00') {
      return NumberOfCustomersValidationError(
          type: NumberOfCustomersValidationErrorType.invalid,
          message: LocaleKeys.features_bookings_validations_pleaseEnterNumberOfCustomer.tr());
    }
    if(double.parse(value.numberOfCustomer) > value.maxCustomerCount ) {
      return NumberOfCustomersValidationError(
          type: NumberOfCustomersValidationErrorType.invalid,
          message: LocaleKeys.features_bookings_validations_maxCustomerLimitExceed.tr());
    }
    if(value.maxCustomerCount == 99999) {
      return NumberOfCustomersValidationError(
          type: NumberOfCustomersValidationErrorType.invalid,
          message: LocaleKeys.features_bookings_validations_selectTableFirst.tr());
    }
    return null;
  }
}

class NumberOfCustomersValidationParameters {
  final String numberOfCustomer;
  final int maxCustomerCount;

  const NumberOfCustomersValidationParameters({
    this.numberOfCustomer = '',
    this.maxCustomerCount = 0,
  });
}