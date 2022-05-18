
class ForgetPassModel{
    String email = "";

    ForgetPassModel.withData(this.email);

    ForgetPassModel.fromJson(Map<String, dynamic> json)
        :email = json['email'];

    Map<String, dynamic> toJson() => {
        'email': email,
    };
}
