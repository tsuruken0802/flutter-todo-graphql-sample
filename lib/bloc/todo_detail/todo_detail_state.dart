import 'package:frontend/enum/api_request_status.dart';
import 'package:frontend/mixin/api_request_state.dart';

class TodoDetailState extends ApiRequestState {

  const TodoDetailState({
    ApiRequestStatus requestStatus = ApiRequestStatus.idle,
    String? errorMessage,
  }) : super(
          requestStatus: requestStatus,
          errorMessage: errorMessage,
        );

  TodoDetailState copyWith({
    ApiRequestStatus? apiRequestStatus,
    String? apiErrorMessage,
  }) {
    return TodoDetailState(
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
