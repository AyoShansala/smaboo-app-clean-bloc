///TODO: TO REMOVE

// import 'package:formz/formz.dart';
// import '../../locales/locale_keys.g.dart';
// import 'package:easy_localization/easy_localization.dart';
// import '../../../features/customers_screen/domain/entities/customer_filters_list/customer_filters_list_data_services.dart';
//
// enum CustomerServiceFormValidationErrorType {
//   empty,
// }
//
// // assignee
// class CustomerServiceFormValidationError {
//   final CustomerServiceFormValidationErrorType type;
//   final String message;
//
//   CustomerServiceFormValidationError({required this.type, required this.message});
// }
//
// class CustomerServiceForm extends FormzInput<CustomerFiltersListDataServices?, CustomerServiceFormValidationError> {
//   const CustomerServiceForm.pure() : super.pure(null);
//   const CustomerServiceForm.dirty(super.value) : super.dirty();
//
//   @override
//   CustomerServiceFormValidationError? validator(CustomerFiltersListDataServices? value) {
//     if (value == null) {
//       return CustomerServiceFormValidationError(type: CustomerServiceFormValidationErrorType.empty, message: LocaleKeys.common_validations_assigneeSelect.tr());
//     }
//     return null;
//   }
// }
