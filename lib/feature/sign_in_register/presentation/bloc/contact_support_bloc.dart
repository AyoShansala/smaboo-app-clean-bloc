import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'contact_support_event.dart';
part 'contact_support_state.dart';

class ContactSupportBloc extends Bloc<ContactSupportEvent, ContactSupportState> {
  ContactSupportBloc() : super(ContactSupportInitial()) {
    on<ContactSupportEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
