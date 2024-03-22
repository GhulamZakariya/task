class ApiResponse<T> {
  Status? status;
  T? responseData;
  String? message;

  ApiResponse.loading(this.message) : status = Status.LOADING;
  ApiResponse.completed(this.responseData) : status = Status.COMPLETED;
  ApiResponse.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $responseData";
  }
}

enum Status { LOADING, COMPLETED, ERROR }