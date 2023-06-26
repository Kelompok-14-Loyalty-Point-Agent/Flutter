import 'dart:convert';

ProfileResponseBody profileResponseBodyFromJson(String str) => ProfileResponseBody.fromJson(json.decode(str));

String profileResponseBodyToJson(ProfileResponseBody data) => json.encode(data.toJson());

class ProfileResponseBody {
    String? status;
    String? message;
    Data? data;

    ProfileResponseBody({
        this.status,
        this.message,
        this.data,
    });

    factory ProfileResponseBody.fromJson(Map<String, dynamic> json) => ProfileResponseBody(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
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

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        role: json["role"],
        profileId: json["profile_id"],
        profile: json["profile"] == null ? null : Profile.fromJson(json["profile"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "name": name,
        "email": email,
        "password": password,
        "role": role,
        "profile_id": profileId,
        "profile": profile?.toJson(),
    };
}

class Profile {
    int? id;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;
    String? name;
    String? address;
    int? age;
    String? gender;
    String? phone;
    String? point;
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
        this.name,
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

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["ID"],
        createdAt: json["CreatedAt"] == null ? null : DateTime.parse(json["CreatedAt"]),
        updatedAt: json["UpdatedAt"] == null ? null : DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"],
        name: json["Name"],
        address: json["Address"],
        age: json["Age"],
        gender: json["Gender"],
        phone: json["Phone"],
        point: json["Point"]?.toString(),
        member: json["Member"],
        transactionMade: json["TransactionMade"],
        monthlyTransaction: json["MonthlyTransaction"],
        totalRedeem: json["TotalRedeem"],
        url: json["URL"],
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "CreatedAt": createdAt?.toIso8601String(),
        "UpdatedAt": updatedAt?.toIso8601String(),
        "DeletedAt": deletedAt,
        "Name": name,
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
