///TODO: TO REMOVE

// import 'package:formz/formz.dart';
// import '../../locales/locale_keys.g.dart';
// import 'package:easy_localization/easy_localization.dart';
// import '../../../features/customers_screen/domain/entities/customer_filters_list/customer_filters_list_data_assignees.dart';
//
// enum CustomerAssigneeFormValidationErrorType {
//   empty,
// }
//
// // assignee
// class CustomerAssigneeFormValidationError {
//   final CustomerAssigneeFormValidationErrorType type;
//   final String message;
//
//   CustomerAssigneeFormValidationError({required this.type, required this.message});
// }
//
// class CustomerAssigneeForm extends FormzInput<CustomerFiltersListDataAssignees?, CustomerAssigneeFormValidationError> {
//   const CustomerAssigneeForm.pure() : super.pure(null);
//   const CustomerAssigneeForm.dirty(super.value) : super.dirty();
//
//   @override
//   CustomerAssigneeFormValidationError? validator(CustomerFiltersListDataAssignees? value) {
//     if (value == null) {
//       return CustomerAssigneeFormValidationError(type: CustomerAssigneeFormValidationErrorType.empty, message: LocaleKeys.common_validations_assigneeSelect.tr());
//     }
//     return null;
//   }
// }
