
class ResetPassModel{
    String email = "";

    ResetPassModel.withData(this.email);

    ResetPassModel.fromJson(Map<String, dynamic> json)
        :email = json['email'];

    Map<String, dynamic> toJson() => {
        'email': email,
    };
}
