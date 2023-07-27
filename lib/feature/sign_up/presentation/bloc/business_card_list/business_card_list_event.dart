part of 'business_card_list_bloc.dart';

@immutable
abstract class BusinessCardListEvent extends Equatable {
  const BusinessCardListEvent();
}

class BusinessCardListRequested extends BusinessCardListEvent {
  @override
  List<Object> get props => [];
}

class BusinessCardListOpened extends BusinessCardListEvent {
  @override
  List<Object> get props => [];
}

class BusinessCardSearched extends BusinessCardListEvent {
  final String keyWord;

  const BusinessCardSearched({required this.keyWord});

  @override
  List<Object> get props => [keyWord];
}
