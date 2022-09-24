part of 'debts_bloc.dart';

abstract class DebtsState extends Equatable {
  const DebtsState();

  @override
  List<Object> get props => [];
}

class DebtsInitial extends DebtsState {}

class MyDebtsLoading extends DebtsState {}

class MyDebtsLoaded extends DebtsState {
  final ApiModel apiModel;

  const MyDebtsLoaded(this.apiModel);
}

class MyDebtsError extends DebtsState {
  final String? message;

 const MyDebtsError(this.message);

}
