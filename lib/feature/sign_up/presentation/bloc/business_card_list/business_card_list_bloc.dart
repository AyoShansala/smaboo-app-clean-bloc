import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'business_card_list_event.dart';
part 'business_card_list_state.dart';

class BusinessCardListBloc extends Bloc<BusinessCardListEvent, BusinessCardListState> {
  BusinessCardListBloc() : super(BusinessCardListInitial()) {
    on<BusinessCardListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
