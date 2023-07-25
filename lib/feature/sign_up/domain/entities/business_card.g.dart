// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_card.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BusinessCardCWProxy {
  BusinessCard address(String address);

  BusinessCard businessUserRoles(List<BusinessUserRole> businessUserRoles);

  BusinessCard city(String city);

  BusinessCard companyProfileImg(String companyProfileImg);

  BusinessCard id(int id);

  BusinessCard name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BusinessCard(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BusinessCard(...).copyWith(id: 12, name: "My name")
  /// ````
  BusinessCard call({
    String? address,
    List<BusinessUserRole>? businessUserRoles,
    String? city,
    String? companyProfileImg,
    int? id,
    String? name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBusinessCard.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBusinessCard.copyWith.fieldName(...)`
class _$BusinessCardCWProxyImpl implements _$BusinessCardCWProxy {
  final BusinessCard _value;

  const _$BusinessCardCWProxyImpl(this._value);

  @override
  BusinessCard address(String address) => this(address: address);

  @override
  BusinessCard businessUserRoles(List<BusinessUserRole> businessUserRoles) =>
      this(businessUserRoles: businessUserRoles);

  @override
  BusinessCard city(String city) => this(city: city);

  @override
  BusinessCard companyProfileImg(String companyProfileImg) =>
      this(companyProfileImg: companyProfileImg);

  @override
  BusinessCard id(int id) => this(id: id);

  @override
  BusinessCard name(String name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BusinessCard(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BusinessCard(...).copyWith(id: 12, name: "My name")
  /// ````
  BusinessCard call({
    Object? address = const $CopyWithPlaceholder(),
    Object? businessUserRoles = const $CopyWithPlaceholder(),
    Object? city = const $CopyWithPlaceholder(),
    Object? companyProfileImg = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return BusinessCard(
      address: address == const $CopyWithPlaceholder() || address == null
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String,
      businessUserRoles: businessUserRoles == const $CopyWithPlaceholder() ||
              businessUserRoles == null
          ? _value.businessUserRoles
          // ignore: cast_nullable_to_non_nullable
          : businessUserRoles as List<BusinessUserRole>,
      city: city == const $CopyWithPlaceholder() || city == null
          ? _value.city
          // ignore: cast_nullable_to_non_nullable
          : city as String,
      companyProfileImg: companyProfileImg == const $CopyWithPlaceholder() ||
              companyProfileImg == null
          ? _value.companyProfileImg
          // ignore: cast_nullable_to_non_nullable
          : companyProfileImg as String,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $BusinessCardCopyWith on BusinessCard {
  /// Returns a callable class that can be used as follows: `instanceOfBusinessCard.copyWith(...)` or like so:`instanceOfBusinessCard.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BusinessCardCWProxy get copyWith => _$BusinessCardCWProxyImpl(this);
}
