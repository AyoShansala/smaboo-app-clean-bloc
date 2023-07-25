
import 'package:dartz/dartz.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/domain/entities/business_card.dart';
import '../../../../core/errors/failures.dart';



abstract class BusinessCardRepository {
  Future<Either<Failure, List<BusinessCard>>> getBusinessCardList();
}
