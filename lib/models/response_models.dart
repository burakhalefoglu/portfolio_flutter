

class DataResponseModel<T>{

  String message;
  bool success;
  T data;

  DataResponseModel.withData(this.data, this.message, this.success);
}


class ResponseModel{

  String message;
  bool success;

  ResponseModel.withData(this.message, this.success);
}