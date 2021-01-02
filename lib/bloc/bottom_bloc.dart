import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kabinet_company/bloc/enums.dart';
import 'package:meta/meta.dart';

part 'bottom_event.dart';
part 'bottom_state.dart';

class BottomBloc extends Bloc<BottomEvent, BottomState> {
  BottomBloc() : super(BottomInitial(false, false, false, false, 1));

  @override
  Stream<BottomState> mapEventToState(
    BottomEvent event,
  ) async* {
  bool bottom_1, bottom_2, bottom_3, bottom_4;
  int mobile_operator = 1;
   switch(event.operation){
     case Operation.money:
       bottom_1 = true;
       bottom_2 = false;
       bottom_3 = false;
       bottom_4 = false;
       yield BottomSuccess(bottom_1, bottom_2, bottom_3, bottom_4, mobile_operator);
       break;
     case Operation.operator:
       bottom_1 = false;
       bottom_2 = true;
       bottom_3 = false;
       bottom_4 = false;
       yield BottomSuccess(bottom_1, bottom_2, bottom_3, bottom_4, mobile_operator);
       break;
     case Operation.network:
       bottom_1 = false;
       bottom_2 = false;
       bottom_3 = true;
       bottom_4 = false;
       yield BottomSuccess(bottom_1, bottom_2, bottom_3, bottom_4, mobile_operator);
       break;
     case Operation.call:
       bottom_1 = false;
       bottom_2 = false;
       bottom_3 = false;
       bottom_4 = true;
       yield BottomSuccess(bottom_1, bottom_2, bottom_3, bottom_4, mobile_operator);
       break;
     case Operation.uzmobile:
       mobile_operator = 1;
       yield BottomSuccess(bottom_1, bottom_2, bottom_3, bottom_4, mobile_operator);
       break;
     case Operation.uzmobile:
       mobile_operator = 1;
       yield BottomSuccess(bottom_1, bottom_2, bottom_3, bottom_4, mobile_operator);
       break;
     case Operation.uzmobile:
       mobile_operator = 1;
       yield BottomSuccess(bottom_1, bottom_2, bottom_3, bottom_4, mobile_operator);
       break;
     case Operation.uzmobile:
       mobile_operator = 1;
       yield BottomSuccess(bottom_1, bottom_2, bottom_3, bottom_4, mobile_operator);
       break;
     default:
       yield BottomFaild("Error occured!!!");

   }
  }
}
