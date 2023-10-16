import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../features/contact_support/domain/entity/inquiry_entity.dart';

enum InquiryTypeValidationErrorType {
  empty,
}

class InquiryTypeValidationError {
  final InquiryTypeValidationErrorType type;
  final String message;

  InquiryTypeValidationError({required this.type, required this.message});
}

class Inquiry extends FormzInput<InquiryClass?, InquiryTypeValidationError> {
  const Inquiry.pure() : super.pure(null);
  const Inquiry.dirty(super.value) : super.dirty();

  @override
  InquiryTypeValidationError? validator(InquiryClass? value) {
    if(value == null) {
      return InquiryTypeValidationError(type: InquiryTypeValidationErrorType.empty, message: LocaleKeys.features_inquiry_validation_issueType.tr());
    }
    return null;
  }
}