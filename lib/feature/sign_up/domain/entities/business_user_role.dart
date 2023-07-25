import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'business_user_role.g.dart';
@CopyWith()
class BusinessUserRole extends Equatable {
  final int id;
  final String name;

  const BusinessUserRole({required this.id,required this.name});

  @override

  List<Object?> get props => [id,name];


}
