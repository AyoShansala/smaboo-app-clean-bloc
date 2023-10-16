import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../domain/entities/profile.dart';

ProfileModel profileFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel extends Equatable {
  String? status;
  String? message;
  Data? data;

  ProfileModel({this.status, this.message, this.data});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [status, message, data];

  ProfileClass toEntity() {
    return ProfileClass(
         id: data!.id ?? 0,
         name: data!.name ?? '',
         image : data!.image ?? '',
         contactNumber: data!.contactNumber ?? '',
         email: data!.email ?? '',
         address: data!.address ?? '',
         designation: data!.designation ?? '',
         createdAt: data!.createdAt ?? '',
         accountType: data!.accountType ?? '',
         dob: data!.dob ?? '',
         gender: data!.gender ?? '',
         activeYearsCount: data!.activeYearsCount ?? ''
    );
  }

}

class Data extends Equatable {
  int? id;
  String? name;
  String? image;
  String? contactNumber;
  String? email;
  String? address;
  String? designation;
  String? createdAt;
  String? accountType;
  String? dob;
  String? gender;
  String? activeYearsCount;

  Data(
      {this.id,
        this.name,
        this.image,
        this.contactNumber,
        this.email,
        this.address,
        this.designation,
        this.createdAt,
        this.accountType,
        this.dob,
        this.gender,
        this.activeYearsCount});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    contactNumber = json['contact_number'];
    email = json['email'];
    address = json['address'];
    designation = json['designation'];
    createdAt = json['created_at'];
    accountType = json['account_type'];
    dob = json['dob'];
    gender = json['gender'];
    activeYearsCount = json['active_years_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['contact_number'] = contactNumber;
    data['email'] = email;
    data['address'] = address;
    data['designation'] = designation;
    data['created_at'] = createdAt;
    data['account_type'] = accountType;
    data['dob'] = dob;
    data['gender'] = gender;
    data['active_years_count'] = activeYearsCount;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, image, contactNumber, email, address, designation, createdAt, accountType, dob, gender, activeYearsCount];

}