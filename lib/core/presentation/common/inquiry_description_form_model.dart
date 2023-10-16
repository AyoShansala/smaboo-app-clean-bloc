import 'package:formz/formz.dart';
import '../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

enum InquiryValidationErrorType {
  empty,
  invalidLength
}

class InquiryValidationError {
  final InquiryValidationErrorType? type;
  final String? message;

  InquiryValidationError({this.type, this.message});
}

class InquiryDescription extends FormzInput<String, InquiryValidationError> {
  const InquiryDescription.pure() : super.pure('');
  const InquiryDescription.dirty(super.value) : super.dirty();

  @override
  InquiryValidationError? validator(String value) {
    if(value.isEmpty) {
      return InquiryValidationError(type: InquiryValidationErrorType.empty, message: LocaleKeys.features_inquiry_validation_descriptionEmpty.tr());
    }
    // if(value.length<3) {
    //   return InquiryValidationError(type: InquiryValidationErrorType.invalidLength, message: LocaleKeys.features_inquiry_validation_descriptionEmpty.tr());
    // }
    return null;
  }
}