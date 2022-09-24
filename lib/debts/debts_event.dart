part of 'debts_bloc.dart';

abstract class DebtsEvent extends Equatable {
  const DebtsEvent();

  @override
  List<Object> get props => [];
}
class GetMyDebtsList extends DebtsEvent{}