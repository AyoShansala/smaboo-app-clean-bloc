
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../usecases/post_contact_support.dart';

abstract class ContactSupport{
   Future<Either<Failure, bool>> postContactSupportDetails(ContactParam contactParam);
}
