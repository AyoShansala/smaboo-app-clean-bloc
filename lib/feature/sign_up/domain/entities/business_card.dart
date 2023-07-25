import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'business_user_role.dart';

part 'business_card.g.dart';

@CopyWith()
class BusinessCard extends Equatable {
  final int id;
  final String name;
  final String address;
  final String city;
  final String companyProfileImg;
  final List<BusinessUserRole> businessUserRoles;

  const BusinessCard({
    required this.id,
    required this.name,
    required this.address,
    required this.city,
    required this.companyProfileImg,
    required this.businessUserRoles,
  });

  @override
  List<Object> get props =>
      [id, name, address, city, companyProfileImg, businessUserRoles,];

}