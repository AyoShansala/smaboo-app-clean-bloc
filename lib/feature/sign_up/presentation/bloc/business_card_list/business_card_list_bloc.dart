import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:smaboo_app_clean_bloc/core/errors/failures.dart';
import 'package:smaboo_app_clean_bloc/core/usecase/usecase.dart';

import '../../../../../core/blocs/event_transformer.dart';
import '../../../domain/entities/business_card.dart';
import '../../../domain/usecases/get_business_card_list.dart';

part 'business_card_list_event.dart';
part 'business_card_list_state.dart';

class BusinessCardListBloc extends Bloc<BusinessCardListEvent, BusinessCardListState> {
  final GetBusinessCardList getBusinessCardList;

  BusinessCardListBloc({required this.getBusinessCardList})
      : super(BusinessCardListInitial(const [])) {
    // on<BusinessCardListRequested>(_requestBusinessList, transformer: Transformer.throttleDroppable(),);
    on<BusinessCardListOpened>(_openBusinessList, transformer: Transformer.throttleDroppable(),);
    on<BusinessCardSearched>(_searchBusiness, transformer: Transformer.throttleRestartable(),);
  }

  // Either<Failure, List<BusinessCard>>? _result;

  // this event will call when when opening the Screen. (In the wrapper class)
  // Future<FutureOr<void>> _requestBusinessList(BusinessCardListRequested event, Emitter<BusinessCardListState> emit) async {
  //   _result = await getBusinessCardList(NoParams());
  // }

  // this event will call when user tap on the "Select Business" text field view on the UI
  Future<FutureOr<void>> _openBusinessList(BusinessCardListOpened event, Emitter<BusinessCardListState> emit) async {
    // If data still not fetched
    if(state is BusinessCardListInitial || state is BusinessCardListLoadFailure) {
      emit(BusinessCardListLoadInProgress(const []));
      Either<Failure, List<BusinessCard>> result = await getBusinessCardList(NoParams());
      result.fold((failure){
        String message = '';
        if(failure is ServerFailure){
          // message = failure.message;
        }else{
          // message = LocaleKeys.f
        }
        emit(BusinessCardListLoadFailure(const [], message:message));
      }, (businessList)=> emit(BusinessCardListLoadSuccess(businessList)));
    }
  }

  // this event will call when user search a Business from the "Select Business" bottom sheet view on the UI
  Future<FutureOr<void>> _searchBusiness(BusinessCardSearched event, Emitter<BusinessCardListState> emit) async {
    late List<BusinessCard> tempList, originalList;

    // Store previous data before proceed
    if(state is BusinessCardListItemSearchSuccess) {
      tempList = List.from((state as BusinessCardListItemSearchSuccess).businessCardListOriginal);
      originalList = List.from((state as BusinessCardListItemSearchSuccess).businessCardListOriginal);
    } else {
      tempList = List.from(state.businessCardList);
      originalList = List.from(state.businessCardList);
    }

    emit(BusinessCardListItemSearchInProgress(const []));

    // Filter list by  key word (looking for matching in both name and address field)
    RegExp regExp = RegExp(event.keyWord, caseSensitive: false);
    tempList.retainWhere((business) => business.address.contains(regExp) || business.name.contains(regExp));

    emit(BusinessCardListItemSearchSuccess(tempList, businessCardListOriginal: originalList,));
  }
}
