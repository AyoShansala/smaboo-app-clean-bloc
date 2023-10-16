import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_in_register/domain/repository/contact_support_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';

class PostContactSupportDetails implements UseCase<bool, ContactParam> {
  final ContactSupport contactSupport;

  PostContactSupportDetails({
    required this.contactSupport,
  });

  @override
  Future<Either<Failure, bool>> call(ContactParam params) async {
    return await contactSupport.postContactSupportDetails(params);
  }
}

// class ContactSupportRepository {
// }

class ContactParam extends Equatable {
  final String name;
  final String email;
  final String telephone;
  final String inquiry;

  const ContactParam({
    required this.name,
    required this.email,
    required this.telephone,
    required this.inquiry,
  });

  @override
  List<Object> get props => [name, email, telephone, inquiry];

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'contact_number': telephone,
      'inquiry': inquiry,
    };
  }
}