import 'package:formz/formz.dart';
import 'package:equatable/equatable.dart';
import '../../../locales/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../features/booking_new/domain/entities/business_area/business_area_list_entity.dart';

enum AreaValidationErrorType {
  empty,
}
// area
class AreaValidationError {
  final AreaValidationErrorType type;
  final String message;

  AreaValidationError({required this.type, required this.message});
}

class Area extends FormzInput<AreaBookingParam?, AreaValidationError> {
  const Area.pure() : super.pure(null);

  const Area.dirty(super.value) : super.dirty();

  @override
  AreaValidationError? validator(AreaBookingParam? value) {
    if (value == null) {
      return AreaValidationError(type: AreaValidationErrorType.empty, message: LocaleKeys.common_validations_areaSelect.tr());
    }
    return null;
  }
}

class AreaBookingParam extends Equatable {
  final List<int> id;
  final bool hasEmployee;
  final List<BusinessAreaDataEntity> areaDataEntityList;

  const AreaBookingParam({
    required this.id,
    required this.hasEmployee,
    required this.areaDataEntityList,
  });

  @override
  List<Object?> get props => [id, hasEmployee, areaDataEntityList];
}
