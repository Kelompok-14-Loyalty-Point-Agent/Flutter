import 'dart:convert';

class RegisterRequestBody {
    String email;
    String name;
    String password;

    RegisterRequestBody({
        required this.email,
        required this.name,
        required this.password,
    });

    factory RegisterRequestBody.fromJson(String str) => RegisterRequestBody.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RegisterRequestBody.fromMap(Map<String, dynamic> json) => RegisterRequestBody(
        email: json["email"],
        name: json["name"],
        password: json["password"],
    );

    Map<String, dynamic> toMap() => {
        "email": email,
        "name": name,
        "password": password,
    };
}
