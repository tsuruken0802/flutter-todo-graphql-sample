// APIのリクエスト状態
enum ApiRequestStatus {
  // リクエストしていない
  idle,
  // リクエスト中
  requesting,
  // リクエスト成功
  success,
  // リクエスト失敗
  failed,
}

extension ApiRequestStatusFlg on ApiRequestStatus {
  // trueならリクエスト中
  bool get isRequesting {
    return this == ApiRequestStatus.requesting;
  }

  // trueなら成功
  bool get isSuccess {
    return this == ApiRequestStatus.success;
  }

  // trueなら失敗
  bool get isFailed {
    return this == ApiRequestStatus.failed;
  }
}
