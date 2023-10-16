import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum AddressValidationErrorType {
  empty,
  invalidLength
}

class AddressValidationError {
  final AddressValidationErrorType? type;
  final String? message;

  AddressValidationError({this.type, this.message});
}

class Address extends FormzInput<String, AddressValidationError> {
  const Address.pure() : super.pure('');
  const Address.dirty(super.value) : super.dirty();

  @override
  AddressValidationError? validator(String value) {
    if(value.isEmpty) {
      return AddressValidationError(type: AddressValidationErrorType.empty, message: LocaleKeys.common_validations_addressShouldntbeEmpty.tr());
    }
    if(value.length<3) {
      return AddressValidationError(type: AddressValidationErrorType.invalidLength, message: LocaleKeys.common_validations_address3Length.tr());
    }
    return null;
  }
}