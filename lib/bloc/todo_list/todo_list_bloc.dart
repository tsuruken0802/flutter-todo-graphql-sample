import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/todo_list/todo_list_event.dart';
import 'package:frontend/bloc/todo_list/todo_list_state.dart';
import 'package:frontend/qraphql/todo/__generated__/todo.query.req.gql.dart';

class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  TodoListBloc()
      : super(
          TodoListState(
            todoReq: GGetTodosReq(
              (b) => b,
            ),
          ),
        ) {
    on<OnFirstRequest>(_onFirstRequest);
    add(OnFirstRequest());
  }

  _onFirstRequest(OnFirstRequest event, Emitter<TodoListState> emit) async {}
}
