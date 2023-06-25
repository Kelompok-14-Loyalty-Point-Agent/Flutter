// To parse this JSON data, do
//
//     final profileResponseBody = profileResponseBodyFromMap(jsonString);

import 'dart:convert';

class ProfileResponseBody {
    String? status;
    String? message;
    Data? data;

    ProfileResponseBody({
        this.status,
        this.message,
        this.data,
    });

    factory ProfileResponseBody.fromJson(String str) => ProfileResponseBody.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProfileResponseBody.fromMap(Map<String, dynamic> json) => ProfileResponseBody(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data?.toMap(),
    };
}

class Data {
    int? id;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;
    String? name;
    String? email;
    String? password;
    String? role;
    int? profileId;
    Profile? profile;

    Data({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.name,
        this.email,
        this.password,
        this.role,
        this.profileId,
        this.profile,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        role: json["role"],
        profileId: json["profile_id"],
        profile: json["profile"] == null ? null : Profile.fromMap(json["profile"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "name": name,
        "email": email,
        "password": password,
        "role": role,
        "profile_id": profileId,
        "profile": profile?.toMap(),
    };
}

class Profile {
    int? id;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;
    String? address;
    int? age;
    String? gender;
    String? phone;
    int? point;
    String? member;
    int? transactionMade;
    int? monthlyTransaction;
    int? totalRedeem;
    String? url;

    Profile({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.address,
        this.age,
        this.gender,
        this.phone,
        this.point,
        this.member,
        this.transactionMade,
        this.monthlyTransaction,
        this.totalRedeem,
        this.url,
    });

    factory Profile.fromJson(String str) => Profile.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Profile.fromMap(Map<String, dynamic> json) => Profile(
        id: json["ID"],
        createdAt: json["CreatedAt"] == null ? null : DateTime.parse(json["CreatedAt"]),
        updatedAt: json["UpdatedAt"] == null ? null : DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"],
        address: json["Address"],
        age: json["Age"],
        gender: json["Gender"],
        phone: json["Phone"],
        point: json["Point"],
        member: json["Member"],
        transactionMade: json["TransactionMade"],
        monthlyTransaction: json["MonthlyTransaction"],
        totalRedeem: json["TotalRedeem"],
        url: json["URL"],
    );

    Map<String, dynamic> toMap() => {
        "ID": id,
        "CreatedAt": createdAt?.toIso8601String(),
        "UpdatedAt": updatedAt?.toIso8601String(),
        "DeletedAt": deletedAt,
        "Address": address,
        "Age": age,
        "Gender": gender,
        "Phone": phone,
        "Point": point,
        "Member": member,
        "TransactionMade": transactionMade,
        "MonthlyTransaction": monthlyTransaction,
        "TotalRedeem": totalRedeem,
        "URL": url,
    };
}
