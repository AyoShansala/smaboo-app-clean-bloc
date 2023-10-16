import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'update_profile.g.dart';

@CopyWith()
class UpdateProfileClass extends Equatable {
  final int id;
  final String name;
  final String email;
  final dynamic emailVerifiedAt;
  final String primaryPhoneNumber;
  final dynamic phoneVerifiedAt;
  final dynamic accessAttributes;
  final String firebaseUid;
  final dynamic onesignalToken;
  final int isActive;
  final dynamic deviceType;
  final String languageCode;
  final String createdAt;
  final String updatedAt;
  final String timezone;
  final String phoneNumberPostfix;
  final dynamic deletedAt;
  final int passwordResetRequired;

  const UpdateProfileClass({
    required this.id,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.primaryPhoneNumber,
    required this.phoneVerifiedAt,
    required this.accessAttributes,
    required this.firebaseUid,
    required this.onesignalToken,
    required this.isActive,
    required this.deviceType,
    required this.languageCode,
    required this.createdAt,
    required this.updatedAt,
    required this.timezone,
    required this.phoneNumberPostfix,
    required this.deletedAt,
    required this.passwordResetRequired,
  });

  @override
  List<Object> get props => [
        id,
        name,
        email,
        emailVerifiedAt,
        primaryPhoneNumber,
        phoneVerifiedAt,
        accessAttributes,
        firebaseUid,
        onesignalToken,
        isActive,
        deviceType,
        languageCode,
        createdAt,
        updatedAt,
        timezone,
        phoneNumberPostfix,
        deletedAt,
        passwordResetRequired,
      ];
}
