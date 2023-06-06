import 'dart:convert';

class RegisterResponseBody {
    String status;
    String message;
    Data data;

    RegisterResponseBody({
        required this.status,
        required this.message,
        required this.data,
    });

    factory RegisterResponseBody.fromJson(String str) => RegisterResponseBody.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RegisterResponseBody.fromMap(Map<String, dynamic> json) => RegisterResponseBody(
        status: json["status"],
        message: json["message"],
        data: Data.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data.toMap(),
    };
}

class Data {
    int id;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    String name;
    String email;
    String password;
    String role;

    Data({
        required this.id,
        required this.createdAt,
        required this.updatedAt,
        required this.deletedAt,
        required this.name,
        required this.email,
        required this.password,
        required this.role,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        role: json["role"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "name": name,
        "email": email,
        "password": password,
        "role": role,
    };
}
