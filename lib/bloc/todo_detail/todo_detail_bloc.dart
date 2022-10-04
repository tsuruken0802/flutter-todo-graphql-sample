import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/todo_detail/todo_detail_event.dart';
import 'package:frontend/bloc/todo_detail/todo_detail_state.dart';

class TodoDetailBloc extends Bloc<TodoDetailEvent, TodoDetailState> {

  TodoDetailBloc() : super(const TodoDetailState()) {
    on<OnFirstRequest>(_onFirstRequest);
    add(OnFirstRequest());
  }

  _onFirstRequest(OnFirstRequest event, Emitter<TodoDetailState> emit) async {}
}
