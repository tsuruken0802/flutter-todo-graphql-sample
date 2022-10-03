import 'package:ferry/ferry.dart';
import 'package:frontend/mixin/api_request_state.dart';
import 'package:frontend/enum/api_request_status.dart';
import 'package:frontend/qraphql/todo/__generated__/todo.query.data.gql.dart';
import 'package:frontend/qraphql/todo/__generated__/todo.query.req.gql.dart';
import 'package:frontend/qraphql/todo/__generated__/todo.query.var.gql.dart';

class TodoListState extends ApiRequestState {
  final GGetTodosReq todoReq;

  final Stream<OperationResponse<GGetTodosData, GGetTodosVars>>? stream;

  const TodoListState({
    required this.todoReq,
    this.stream,
    ApiRequestStatus requestStatus = ApiRequestStatus.idle,
    String? errorMessage,
  }) : super(
          requestStatus: requestStatus,
          errorMessage: errorMessage,
        );

  TodoListState copyWith({
    GGetTodosReq? todoReq,
    Stream<OperationResponse<GGetTodosData, GGetTodosVars>>? stream,
    ApiRequestStatus? apiRequestStatus,
    String? apiErrorMessage,
  }) {
    return TodoListState(
      todoReq: todoReq ?? this.todoReq,
      stream: stream ?? this.stream,
      requestStatus: apiRequestStatus ?? ApiRequestStatus.idle,
      errorMessage: apiErrorMessage,
    );
  }

  @override
  List<Object?> get props => [
        todoReq,
        stream,
        requestStatus,
        errorMessage,
      ];
}
