import 'package:formz/formz.dart';
import 'package:equatable/equatable.dart';
import '../../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../features/booking_new/domain/entities/business_service/business_service_list_entity.dart';

enum StylistServiceValidationErrorType {
  empty,
}
// assignee
class StylistServiceValidationError {
  final StylistServiceValidationErrorType type;
  final String message;

  StylistServiceValidationError({required this.type, required this.message});
}

class Services
    extends FormzInput<ServiceListData?, StylistServiceValidationError> {
  const Services.pure() : super.pure(null);

  const Services.dirty(super.value) : super.dirty();

  @override
  StylistServiceValidationError? validator(ServiceListData? value) {
    if (value == null) {
      return StylistServiceValidationError(
          type: StylistServiceValidationErrorType.empty,
          message: LocaleKeys.features_bookings_ui_selectService.tr());
    }
    return null;
  }
}

class ServiceListData extends Equatable {
  final List<int> id;
  final int duration;
  final List<BusinessServiceListEntity> businessServiceList;

  const ServiceListData({
    required this.id,
    required this.duration,
    required this.businessServiceList,
  });

  @override
  List<Object> get props => [id, duration, businessServiceList];
}