// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProfileClassCWProxy {
  ProfileClass accountType(String? accountType);

  ProfileClass activeYearsCount(String? activeYearsCount);

  ProfileClass address(String? address);

  ProfileClass contactNumber(String? contactNumber);

  ProfileClass createdAt(String? createdAt);

  ProfileClass designation(String? designation);

  ProfileClass dob(String? dob);

  ProfileClass email(String? email);

  ProfileClass gender(String? gender);

  ProfileClass id(int? id);

  ProfileClass image(String? image);

  ProfileClass name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProfileClass(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProfileClass(...).copyWith(id: 12, name: "My name")
  /// ````
  ProfileClass call({
    String? accountType,
    String? activeYearsCount,
    String? address,
    String? contactNumber,
    String? createdAt,
    String? designation,
    String? dob,
    String? email,
    String? gender,
    int? id,
    String? image,
    String? name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProfileClass.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProfileClass.copyWith.fieldName(...)`
class _$ProfileClassCWProxyImpl implements _$ProfileClassCWProxy {
  final ProfileClass _value;

  const _$ProfileClassCWProxyImpl(this._value);

  @override
  ProfileClass accountType(String? accountType) =>
      this(accountType: accountType);

  @override
  ProfileClass activeYearsCount(String? activeYearsCount) =>
      this(activeYearsCount: activeYearsCount);

  @override
  ProfileClass address(String? address) => this(address: address);

  @override
  ProfileClass contactNumber(String? contactNumber) =>
      this(contactNumber: contactNumber);

  @override
  ProfileClass createdAt(String? createdAt) => this(createdAt: createdAt);

  @override
  ProfileClass designation(String? designation) =>
      this(designation: designation);

  @override
  ProfileClass dob(String? dob) => this(dob: dob);

  @override
  ProfileClass email(String? email) => this(email: email);

  @override
  ProfileClass gender(String? gender) => this(gender: gender);

  @override
  ProfileClass id(int? id) => this(id: id);

  @override
  ProfileClass image(String? image) => this(image: image);

  @override
  ProfileClass name(String? name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProfileClass(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProfileClass(...).copyWith(id: 12, name: "My name")
  /// ````
  ProfileClass call({
    Object? accountType = const $CopyWithPlaceholder(),
    Object? activeYearsCount = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? contactNumber = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? designation = const $CopyWithPlaceholder(),
    Object? dob = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? image = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return ProfileClass(
      accountType: accountType == const $CopyWithPlaceholder()
          ? _value.accountType
          // ignore: cast_nullable_to_non_nullable
          : accountType as String?,
      activeYearsCount: activeYearsCount == const $CopyWithPlaceholder()
          ? _value.activeYearsCount
          // ignore: cast_nullable_to_non_nullable
          : activeYearsCount as String?,
      address: address == const $CopyWithPlaceholder()
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String?,
      contactNumber: contactNumber == const $CopyWithPlaceholder()
          ? _value.contactNumber
          // ignore: cast_nullable_to_non_nullable
          : contactNumber as String?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as String?,
      designation: designation == const $CopyWithPlaceholder()
          ? _value.designation
          // ignore: cast_nullable_to_non_nullable
          : designation as String?,
      dob: dob == const $CopyWithPlaceholder()
          ? _value.dob
          // ignore: cast_nullable_to_non_nullable
          : dob as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      gender: gender == const $CopyWithPlaceholder()
          ? _value.gender
          // ignore: cast_nullable_to_non_nullable
          : gender as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      image: image == const $CopyWithPlaceholder()
          ? _value.image
          // ignore: cast_nullable_to_non_nullable
          : image as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $ProfileClassCopyWith on ProfileClass {
  /// Returns a callable class that can be used as follows: `instanceOfProfileClass.copyWith(...)` or like so:`instanceOfProfileClass.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProfileClassCWProxy get copyWith => _$ProfileClassCWProxyImpl(this);
}
