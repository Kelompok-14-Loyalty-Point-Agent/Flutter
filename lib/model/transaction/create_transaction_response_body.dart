import 'dart:convert';

class TransactionResponseBody {
  String? status;
  String? message;
  TransactionModel? data;

  TransactionResponseBody({
    this.status,
    this.message,
    this.data,
  });

  factory TransactionResponseBody.fromJson(String str) =>
      TransactionResponseBody.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TransactionResponseBody.fromMap(Map<String, dynamic> json) =>
      TransactionResponseBody(
        status: json["status"],
        message: json["message"],
        data: TransactionModel.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data!.toMap(),
      };
}

class TransactionModel {
  int? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? phone;
  int? stockId;
  int? stockDetailsId;
  int? price;
  String? product;
  String? paymentMethod;
  int? point;
  String? status;
  String? description;
  int? userId;

  TransactionModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.phone,
    this.stockId,
    this.stockDetailsId,
    this.price,
    this.product,
    this.paymentMethod,
    this.point,
    this.status,
    this.description,
    this.userId,
  });

  factory TransactionModel.fromJson(String str) =>
      TransactionModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TransactionModel.fromMap(Map<String, dynamic> json) =>
      TransactionModel(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        phone: json["phone"],
        stockId: json["stock_id"],
        stockDetailsId: json["stock_details_id"],
        price: json["price"],
        product: json["product"],
        paymentMethod: json["payment_method"],
        point: json["point"],
        status: json["status"],
        description: json["description"],
        userId: json["user_id"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "phone": phone,
        "stock_id": stockId,
        "stock_details_id": stockDetailsId,
        "price": price,
        "product": product,
        "payment_method": paymentMethod,
        "point": point,
        "status": status,
        "description": description,
        "user_id": userId,
      };
}
