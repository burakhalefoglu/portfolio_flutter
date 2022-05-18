
class LoginModel{
    String uuid = "";
    String email = "";
    String name = "";
    String password = "";

    LoginModel.withData(this.uuid,
    this.email,
    this.name,
    this.password);

    LoginModel.fromJson(Map<String, dynamic> json)
        : uuid = json['uuid'],
            email = json['email'],
            name = json['name'],
            password = json['password'];

    Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'email': email,
        'name': name,
        'password': password,
    };
}
