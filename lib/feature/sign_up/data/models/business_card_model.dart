// To parse this JSON data, do
//
//     final businessListModel = businessListModelFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/domain/entities/business_card.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/domain/entities/business_user_role.dart';

BusinessListModel businessListModelFromJson(String str) =>
    BusinessListModel.fromJson(json.decode(str));

String businessListModelToJson(BusinessListModel data) =>
    json.encode(data.toJson());

class BusinessListModel extends Equatable {
  final String? status;
  final String? message;
  final List<Datum>? data;

  const BusinessListModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory BusinessListModel.fromJson(Map<String, dynamic> json) =>
      BusinessListModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };

  List<BusinessCard> toEntity() {
    return List<BusinessCard>.from(
      (data ?? <Datum>[]).map(
        (businessCard) => BusinessCard(
          id: businessCard.id ?? -99,
          name: businessCard.name ?? '',
          address: businessCard.address ?? '',
          city: businessCard.city ?? '',
          companyProfileImg: businessCard.companyProfileImg ?? '',
          businessUserRoles: List<BusinessUserRole>.from(
            (businessCard.vendorRoles ?? <VendorRole>[]).map(
              (role) =>
                  BusinessUserRole(id: role.id ?? -99, name: role.name ?? ''),
            ),
          ),
        ),
      ),
    );
  }

  @override
  List<Object?> get props => [
        status,
        message,
        data,
      ];
}

//BusinessCardModel
class Datum extends Equatable {
  final int? id;
  final String? name;
  final String? address;
  final String? city;
  final String? companyProfileImg;
  final List<VendorRole>? vendorRoles;

  const Datum({
    required this.id,
    required this.name,
    required this.address,
    required this.city,
    required this.companyProfileImg,
    required this.vendorRoles,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        city: json["city"],
        companyProfileImg: json["company_profile_img"],
        vendorRoles: json["venderRoles"] == null
            ? null
            : List<VendorRole>.from(
                json["vendorRoles"].map(
                  (x) => VendorRole.fromJson(x),
                ),
              ),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "city": city,
        "company_profile_img": companyProfileImg,
        "vendorRoles": vendorRoles == null
            ? null
            : List<dynamic>.from(
                vendorRoles!.map(
                  (x) => x.toJson(),
                ),
              ),
      };

  @override
  List<Object?> get props => [
        id,
        name,
        address,
        city,
        companyProfileImg,
        vendorRoles,
      ];
}

//BusinessUserRoleModel
class VendorRole extends Equatable {
  final int? id;
  final String? name;
  final dynamic profileImg;

  const VendorRole({
    required this.id,
    required this.name,
    this.profileImg,
  });

  factory VendorRole.fromJson(Map<String, dynamic> json) => VendorRole(
        id: json["id"],
        name: json["name"],
        profileImg: json["profile_img"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "profile_img": profileImg,
      };

  @override
  List<Object?> get props => [id, name, profileImg];
}
