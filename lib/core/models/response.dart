
class ResponseModel{
  String message;
  bool success;
  ResponseModel.withData(this.success, this.message);
}

class ResponseDataModel<T>{
  String message;
  bool success;
  T data;
  ResponseDataModel.withData(this.data, this.success, this.message);
}
