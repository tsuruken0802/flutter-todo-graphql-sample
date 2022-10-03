import 'package:frontend/mixin/api_request_state.dart';
import 'package:frontend/enum/api_request_status.dart';
import 'package:frontend/qraphql/todo/__generated__/todo.query.req.gql.dart';

class TodoListState extends ApiRequestState {
  final GGetTodosReq todoReq;

  const TodoListState({
    required this.todoReq,
    ApiRequestStatus requestStatus = ApiRequestStatus.idle,
    String? errorMessage,
  }) : super(
          requestStatus: requestStatus,
          errorMessage: errorMessage,
        );

  TodoListState copyWith({
    GGetTodosReq? todoReq,
    ApiRequestStatus? apiRequestStatus,
    String? apiErrorMessage,
  }) {
    return TodoListState(
      todoReq: todoReq ?? this.todoReq,
      requestStatus: apiRequestStatus ?? ApiRequestStatus.idle,
      errorMessage: apiErrorMessage,
    );
  }

  @override
  List<Object?> get props => [
        todoReq,
        requestStatus,
        errorMessage,
      ];
}
