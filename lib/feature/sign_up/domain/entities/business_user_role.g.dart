// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_user_role.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BusinessUserRoleCWProxy {
  BusinessUserRole id(int id);

  BusinessUserRole name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BusinessUserRole(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BusinessUserRole(...).copyWith(id: 12, name: "My name")
  /// ````
  BusinessUserRole call({
    int? id,
    String? name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBusinessUserRole.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBusinessUserRole.copyWith.fieldName(...)`
class _$BusinessUserRoleCWProxyImpl implements _$BusinessUserRoleCWProxy {
  final BusinessUserRole _value;

  const _$BusinessUserRoleCWProxyImpl(this._value);

  @override
  BusinessUserRole id(int id) => this(id: id);

  @override
  BusinessUserRole name(String name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BusinessUserRole(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BusinessUserRole(...).copyWith(id: 12, name: "My name")
  /// ````
  BusinessUserRole call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return BusinessUserRole(
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

extension $BusinessUserRoleCopyWith on BusinessUserRole {
  /// Returns a callable class that can be used as follows: `instanceOfBusinessUserRole.copyWith(...)` or like so:`instanceOfBusinessUserRole.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BusinessUserRoleCWProxy get copyWith => _$BusinessUserRoleCWProxyImpl(this);
}
