part of 'business_card_list_bloc.dart';

@immutable
abstract class BusinessCardListState extends Equatable {
  final List<BusinessCard> businessCardList;

  const BusinessCardListState(this.businessCardList);

  @override
  List<Object> get props => [businessCardList];
}

class BusinessCardListInitial extends BusinessCardListState {
  const BusinessCardListInitial(super.businessCardList);
}

class BusinessCardListLoadInProgress extends BusinessCardListState {
  const BusinessCardListLoadInProgress(super.businessCardList);
}

class BusinessCardListLoadSuccess extends BusinessCardListState {
  const BusinessCardListLoadSuccess(super.businessCardList);
}

class BusinessCardListLoadFailure extends BusinessCardListState {
  final String message;

  const BusinessCardListLoadFailure(super.businessCardList,
      {required this.message});

  @override
  List<Object> get props => [message];
}

class BusinessCardListItemSearchInProgress extends BusinessCardListState {
  const BusinessCardListItemSearchInProgress(super.businessCardList);
}

class BusinessCardListItemSearchSuccess extends BusinessCardListState {
  final List<BusinessCard> businessCardListOriginal;

  const BusinessCardListItemSearchSuccess(super.businessCardList,
      {required this.businessCardListOriginal});

  @override
  List<Object> get props => [businessCardListOriginal];
}
