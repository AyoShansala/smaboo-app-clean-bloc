
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
part 'profile.g.dart';

@CopyWith()
class ProfileClass extends Equatable {
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

  ProfileClass(
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

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, image, contactNumber, email, address, designation, createdAt, accountType, dob, gender, activeYearsCount];
}