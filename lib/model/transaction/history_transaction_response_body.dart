import 'dart:convert';

class TransactionHistoryResponseBody {
  String? status;
  String? message;
  List<TransactionHistoryModel>? data;

  TransactionHistoryResponseBody({
    this.status,
    this.message,
    this.data,
  });

  factory TransactionHistoryResponseBody.fromJson(String str) =>
      TransactionHistoryResponseBody.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TransactionHistoryResponseBody.fromMap(Map<String, dynamic> json) =>
      TransactionHistoryResponseBody(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<TransactionHistoryModel>.from(
                json["data"]!.map((x) => TransactionHistoryModel.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class TransactionHistoryModel {
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
  String? status;
  String? description;
  int? userId;

  TransactionHistoryModel({
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
    this.status,
    this.description,
    this.userId,
  });

  factory TransactionHistoryModel.fromJson(String str) =>
      TransactionHistoryModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TransactionHistoryModel.fromMap(Map<String, dynamic> json) =>
      TransactionHistoryModel(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        phone: json["phone"],
        stockId: json["stock_id"],
        stockDetailsId: json["stock_details_id"],
        price: json["price"],
        product: json["product"],
        paymentMethod: json["payment_method"],
        status: json["status"],
        description: json["description"],
        userId: json["user_id"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "phone": phone,
        "stock_id": stockId,
        "stock_details_id": stockDetailsId,
        "price": price,
        "product": product,
        "payment_method": paymentMethod,
        "status": status,
        "description": description,
        "user_id": userId,
      };
}
