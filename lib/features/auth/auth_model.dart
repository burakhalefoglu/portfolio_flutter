
class AuthModel{
    String uuid = "";
    String email = "";
    String name = "";
    String password = "";

    AuthModel.withData(this.uuid,
    this.email,
    this.name,
    this.password);

    AuthModel.fromJson(Map<String, dynamic> json)
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
