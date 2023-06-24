import 'dart:ffi';

class ProfileModels {
  String status;
  String message;
  Data data;

  ProfileModels({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ProfileModels.fromJson(Map<String, dynamic> json) {
    return ProfileModels(
      status: json['status'],
      message: json['message'],
      data: Data.fromJson(json['data']),
    );
  }
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
  int profileId;
  Profile profile;

  Data({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.name,
    required this.email,
    required this.password,
    required this.role,
    required this.profileId,
    required this.profile,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      deletedAt: json['deletedAt'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      role: json['role'],
      profileId: json['profileId'],
      profile: Profile.fromJson(json['profile']),
    );
  }
}

class Profile {
  int id;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String address;
  int age;
  String gender;
  String phone;
  Double point;
  String member;
  int transactionMade;
  int monthlyTransaction;
  int totalRedeem;
  String url;

  Profile({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.address,
    required this.age,
    required this.gender,
    required this.phone,
    required this.point,
    required this.member,
    required this.transactionMade,
    required this.monthlyTransaction,
    required this.totalRedeem,
    required this.url,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      id: json['id'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      deletedAt: json['deletedAt'],
      address: json['address'],
      age: json['age'],
      gender: json['gender'],
      phone: json['phone'],
      point: json['point'],
      member: json['member'],
      transactionMade: json['transactionMade'],
      monthlyTransaction: json['monthlyTransaction'],
      totalRedeem: json['totalRedeem'],
      url: json['url'],
    );
  }
}
