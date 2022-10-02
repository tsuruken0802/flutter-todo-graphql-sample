import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/todo_list/todo_list_event.dart';
import 'package:frontend/bloc/todo_list/todo_list_state.dart';

class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {

  TodoListBloc() : super(const TodoListState()) {
    on<OnFirstRequest>(_onFirstRequest);
    add(OnFirstRequest());
  }

  _onFirstRequest(OnFirstRequest event, Emitter<TodoListState> emit) async {}
}
