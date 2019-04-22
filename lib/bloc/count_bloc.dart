// import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'count_event.dart';

class CounterBloc extends Bloc<CounterEvent, List> {
  @override
  // TODO: implement initialState
  int get initialState => 0;

  @override
  Stream<List> mapEventToState(CounterEvent event) async*{
    // TODO: implement mapEventToState
    switch (event) {
      case CounterEvent.decrement:
        yield currenState - 1;
        break;
      case CounterEvent.increment:
        yield curreState + 1;
        break;
    }
  }
 
}