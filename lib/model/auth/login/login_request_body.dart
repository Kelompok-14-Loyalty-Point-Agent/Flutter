import 'dart:convert';

class LoginRequestBody {
    String email;
    String password;

    LoginRequestBody({
        required this.email,
        required this.password,
    });

    factory LoginRequestBody.fromJson(String str) => LoginRequestBody.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory LoginRequestBody.fromMap(Map<String, dynamic> json) => LoginRequestBody(
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toMap() => {
        "email": email,
        "password": password,
    };
}
