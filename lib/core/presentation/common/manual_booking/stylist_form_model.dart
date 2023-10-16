import 'package:formz/formz.dart';
import 'package:equatable/equatable.dart';
import '../../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../features/booking_new/domain/entities/business_assignee/business_assignee_list_entity.dart';
import '../../../../features/customers_screen/domain/entities/customer_filters_list/customer_filters_list_data_assignees.dart';

enum StylistValidationErrorType {
  empty,
}
// assignee
class StylistValidationError {
  final StylistValidationErrorType type;
  final String message;

  StylistValidationError({required this.type, required this.message});
}

class Stylist extends FormzInput<AssigneeListData?, StylistValidationError> {
  const Stylist.pure() : super.pure(null);
  const Stylist.dirty(super.value) : super.dirty();

  @override
  StylistValidationError? validator(AssigneeListData? value) {
    if (value == null) {
      return StylistValidationError(type: StylistValidationErrorType.empty, message: LocaleKeys.features_bookings_ui_selectStylist.tr());
    }
    return null;
  }
}

class AssigneeListData extends Equatable {
  final List<int> id;
  final String name;
  final List<BusinessAssigneeListEntity> businessAssigneeList;
  final List<CustomerFiltersListDataAssignees> customerAssigneesList;
  final bool hasOverridden;

  const AssigneeListData({
    required this.id,
    required this.name,
    required this.businessAssigneeList,
    required this.customerAssigneesList,
    required this.hasOverridden,
  });

  @override
  List<Object> get props => [id, name, businessAssigneeList, customerAssigneesList, hasOverridden];
}