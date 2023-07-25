import 'package:dartz/dartz.dart';
import 'package:smaboo_app_clean_bloc/core/usecase/usecase.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/domain/entities/business_card.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/business_card_repository.dart';

class GetBusinessCardList implements UseCase<List<BusinessCard>, NoParams> {
  final BusinessCardRepository businessCardRepository;

  GetBusinessCardList({
    required this.businessCardRepository,
  });

  @override
  Future<Either<Failure, List<BusinessCard>>> call(NoParams param) async {
    return await businessCardRepository.getBusinessCardList();
  }
}
