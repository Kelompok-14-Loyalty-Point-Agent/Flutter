class ProfileModels {
  String? status;
  String? message;
  Data? data;

  ProfileModels({this.status, this.message, this.data});

  ProfileModels.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? name;
  String? email;
  String? password;
  String? role;
  int? profileId;
  Profile? profile;

  Data(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.name,
      this.email,
      this.password,
      this.role,
      this.profileId,
      this.profile});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    role = json['role'];
    profileId = json['profile_id'];
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['role'] = this.role;
    data['profile_id'] = this.profileId;
    if (this.profile != null) {
      data['profile'] = this.profile!.toJson();
    }
    return data;
  }
}

class Profile {
  int? iD;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? address;
  int? age;
  String? gender;
  String? phone;
  double? point;
  String? member;
  int? transactionMade;
  int? monthlyTransaction;
  int? totalRedeem;
  String? uRL;

  Profile(
      {this.iD,
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
      this.uRL});

  Profile.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    address = json['Address'];
    age = json['Age'];
    gender = json['Gender'];
    phone = json['Phone'];
    point = json['Point'];
    member = json['Member'];
    transactionMade = json['TransactionMade'];
    monthlyTransaction = json['MonthlyTransaction'];
    totalRedeem = json['TotalRedeem'];
    uRL = json['URL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['Address'] = this.address;
    data['Age'] = this.age;
    data['Gender'] = this.gender;
    data['Phone'] = this.phone;
    data['Point'] = this.point;
    data['Member'] = this.member;
    data['TransactionMade'] = this.transactionMade;
    data['MonthlyTransaction'] = this.monthlyTransaction;
    data['TotalRedeem'] = this.totalRedeem;
    data['URL'] = this.uRL;
    return data;
  }
}