import 'package:formz/formz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:smaboo_business_app/core/locales/locale_keys.g.dart';
import 'package:smaboo_business_app/features/sign_up/domain/entities/business_card.dart';

enum BusinessValidationErrorType {
  empty,
}

class BusinessValidationError {
  final BusinessValidationErrorType type;
  final String message;

  BusinessValidationError({required this.type, required this.message});
}

class Business extends FormzInput<BusinessCard?, BusinessValidationError> {
  const Business.pure() : super.pure(null);
  const Business.dirty(super.value) : super.dirty();

  @override
  BusinessValidationError? validator(BusinessCard? value) {
    if(value == null) {
      return BusinessValidationError(type: BusinessValidationErrorType.empty, message: LocaleKeys.features_signUp_validations_pleaseSelectTheBusiness.tr());
    }
    return null;
  }
}