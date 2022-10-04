import 'package:ferry/ferry.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/todo_list/todo_list_event.dart';
import 'package:frontend/bloc/todo_list/todo_list_state.dart';
import 'package:frontend/qraphql/todo/__generated__/todo.query.req.gql.dart';
import 'package:frontend/service/graphql_client_service.dart';

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
    on<OnRefreshControl>(_onRefreshControl);
    add(OnFirstRequest());
  }

  _onFirstRequest(OnFirstRequest event, Emitter<TodoListState> emit) async {
    await listen(emit);
  }

  _onRefreshControl(OnRefreshControl event, Emitter<TodoListState> emit) async {
    await listen(emit);
  }

  listen(Emitter<TodoListState> emit) async {
    final client = await GraphQLClientService.get();
    final request = GGetTodosReq(
      (b) => b
        ..fetchPolicy = FetchPolicy.NoCache
        ..requestId = DateTime.now().toIso8601String(),
    );
    final stream = client.request(request);
    emit(state.copyWith(stream: stream, todoReq: request));
  }
}
