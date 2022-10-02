import 'package:frontend/mixin/api_request_state.dart';
import 'package:frontend/enum/api_request_status.dart';

class TodoListState extends ApiRequestState {
  const TodoListState({
    ApiRequestStatus requestStatus = ApiRequestStatus.idle,
    String? errorMessage,
  }) : super(
          requestStatus: requestStatus,
          errorMessage: errorMessage,
        );

  TodoListState copyWith({
    ApiRequestStatus? apiRequestStatus,
    String? apiErrorMessage,
  }) {
    return TodoListState(
      requestStatus: apiRequestStatus ?? ApiRequestStatus.idle,
      errorMessage: apiErrorMessage,
    );
  }

  @override
  List<Object?> get props => [
        requestStatus,
        errorMessage,
      ];
}
