import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:machine_test/model/apimodel.dart';
import 'package:machine_test/resources/api_repositary.dart';

part 'debts_event.dart';
part 'debts_state.dart';

class DebtsBloc extends Bloc<DebtsEvent, DebtsState> {
  DebtsBloc() : super(DebtsInitial()) {
    final ApiRepository apiRepository = ApiRepository();
    on<GetMyDebtsList>((event, emit) async {
      try {
        emit(MyDebtsLoading());
        final mList = await apiRepository.getMyDebts();
        emit(MyDebtsLoaded(mList!));
      } on NetworkError {
        emit(MyDebtsError("Failed to fetch data. is your device online?"));
      }

      // TODO: implement event handler
    });
  }
}
