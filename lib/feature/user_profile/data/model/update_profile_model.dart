import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../domain/entities/update_profile.dart';

UpdateProfileModel updateProfileModelFromJson(String str) => UpdateProfileModel.fromJson(json.decode(str));

String updateProfileModelToJson(UpdateProfileModel data) => json.encode(data.toJson());

class UpdateProfileModel extends Equatable{
  String? status;
  String? message;
  Data? data;

  UpdateProfileModel({this.status, this.message, this.data});

  UpdateProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [status, message, data];

  UpdateProfileClass toEntity() {
    return UpdateProfileClass(
      name: data?.name ?? '',
      isActive: data?.isActive ?? 0,
      id: data?.id ?? 0,
      email: data?.email ?? '',
      emailVerifiedAt: data?.emailVerifiedAt ?? 0,
      primaryPhoneNumber: data?.primaryPhoneNumber ?? '',
      phoneVerifiedAt: data?.phoneVerifiedAt ?? 0,
      accessAttributes: data?.accessAttributes ?? 0,
      firebaseUid: data?.firebaseUid ?? '',
      onesignalToken: data?.onesignalToken ?? 0,
      deviceType: data?.deviceType ?? 0,
      languageCode: data?.languageCode ?? '',
      createdAt: data?.createdAt ?? '',
      updatedAt: data?.updatedAt ?? '',
      timezone: data?.timezone ?? '',
      phoneNumberPostfix: data?.phoneNumberPostfix ?? '',
      deletedAt: data?.deletedAt ?? 0,
      passwordResetRequired: data?.passwordResetRequired ?? 0,
    );

  }

}

class Data {
  int? id;
  String? name;
  String? email;
  dynamic? emailVerifiedAt;
  String? primaryPhoneNumber;
  dynamic? phoneVerifiedAt;
  dynamic? accessAttributes;
  String? firebaseUid;
  dynamic? onesignalToken;
  int? isActive;
  dynamic? deviceType;
  String? languageCode;
  String? createdAt;
  String? updatedAt;
  String? timezone;
  String? phoneNumberPostfix;
  dynamic? deletedAt;
  int? passwordResetRequired;

  Data(
      {this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
        this.primaryPhoneNumber,
        this.phoneVerifiedAt,
        this.accessAttributes,
        this.firebaseUid,
        this.onesignalToken,
        this.isActive,
        this.deviceType,
        this.languageCode,
        this.createdAt,
        this.updatedAt,
        this.timezone,
        this.phoneNumberPostfix,
        this.deletedAt,
        this.passwordResetRequired});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    primaryPhoneNumber = json['primary_phone_number'];
    phoneVerifiedAt = json['phone_verified_at'];
    accessAttributes = json['access_attributes'];
    firebaseUid = json['firebase_uid'];
    onesignalToken = json['onesignal_token'];
    isActive = json['is_active'];
    deviceType = json['device_type'];
    languageCode = json['language_code'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    timezone = json['timezone'];
    phoneNumberPostfix = json['phone_number_postfix'];
    deletedAt = json['deleted_at'];
    passwordResetRequired = json['password_reset_required'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['primary_phone_number'] = this.primaryPhoneNumber;
    data['phone_verified_at'] = this.phoneVerifiedAt;
    data['access_attributes'] = this.accessAttributes;
    data['firebase_uid'] = this.firebaseUid;
    data['onesignal_token'] = this.onesignalToken;
    data['is_active'] = this.isActive;
    data['device_type'] = this.deviceType;
    data['language_code'] = this.languageCode;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['timezone'] = this.timezone;
    data['phone_number_postfix'] = this.phoneNumberPostfix;
    data['deleted_at'] = this.deletedAt;
    data['password_reset_required'] = this.passwordResetRequired;
    return data;
  }
}