import 'package:equatable/equatable.dart';
import 'package:frontend/enum/api_request_status.dart';

// APIに関するデータを保持する抽象クラス
// BlocのStateクラスに継承する想定
abstract class ApiRequestState extends Equatable {
  // リクエスト状態
  final ApiRequestStatus requestStatus;

  // エラーメッセージ
  final String? errorMessage;

  // リクエスト中ならtrueを返す
  bool get isRequesting => requestStatus.isRequesting;

  // リクエストに成功したらtrueを返す
  bool get isSuccessApi => requestStatus.isSuccess;

  // リクエストに失敗したらtrueを返す
  bool get isFailedApi => requestStatus.isFailed;

  const ApiRequestState({
    this.requestStatus = ApiRequestStatus.idle,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [
        requestStatus,
        errorMessage,
      ];
}
