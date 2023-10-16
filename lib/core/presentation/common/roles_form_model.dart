import 'package:formz/formz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:smaboo_business_app/core/locales/locale_keys.g.dart';
import '../../../features/sign_up/domain/entities/business_user_role.dart';

enum RolesValidationErrorType {
  empty,
}

class RolesValidationError {
  final RolesValidationErrorType type;
  final String message;

  RolesValidationError({required this.type, required this.message});
}

class Roles extends FormzInput<BusinessUserRole?, RolesValidationError> {
  const Roles.pure() : super.pure(null);

  const Roles.dirty(super.value) : super.dirty();

  @override
  RolesValidationError? validator(BusinessUserRole? value) {
    if (value == null) {
      return RolesValidationError(
        type: RolesValidationErrorType.empty,
        message: LocaleKeys.features_signUp_validations_pleaseSelectTheRole.tr(),
      );
    }
    return null;
  }
}
