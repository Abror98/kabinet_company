part of 'bottom_bloc.dart';

@immutable
abstract class BottomState {}

class BottomInitial extends BottomState {
  final bool bottom_1, bottom_2, bottom_3, bottom_4;
  final int mobile_operator;
  BottomInitial(this.bottom_1, this.bottom_2, this.bottom_3, this.bottom_4, this.mobile_operator);
}


class BottomSuccess extends BottomState{
  final bool bottom_1, bottom_2, bottom_3, bottom_4;
  final int mobile_operator;

  BottomSuccess(this.bottom_1, this.bottom_2, this.bottom_3, this.bottom_4, this.mobile_operator);
}

class BottomFaild extends BottomState{
  final String error;

  BottomFaild(this.error);
}