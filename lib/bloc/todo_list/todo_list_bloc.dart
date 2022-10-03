import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/todo_list/todo_list_event.dart';
import 'package:frontend/bloc/todo_list/todo_list_state.dart';
import 'package:frontend/qraphql/todo/__generated__/todo.query.req.gql.dart';
import 'package:frontend/service/graphql_client_service.dart';

class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  TodoListBloc() : super(const TodoListState()) {
    on<OnFirstRequest>(_onFirstRequest);
    add(OnFirstRequest());
  }

  _onFirstRequest(OnFirstRequest event, Emitter<TodoListState> emit) async {
    //
    final request = GGetTodosReq(
      (b) => b,
    );
    final client = await GraphQLClientService.get();
    client.request(request).listen((response) {});
  }
}
