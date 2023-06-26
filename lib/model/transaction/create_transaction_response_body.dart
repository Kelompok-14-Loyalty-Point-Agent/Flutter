// To parse this JSON data, do
//
//     final createTransactionResponseBody = createTransactionResponseBodyFromMap(jsonString);

import 'dart:convert';

class CreateTransactionResponseBody {
    String? status;
    String? message;
    CreateTransactionModel? data;

    CreateTransactionResponseBody({
        this.status,
        this.message,
        this.data,
    });

    factory CreateTransactionResponseBody.fromJson(String str) => CreateTransactionResponseBody.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CreateTransactionResponseBody.fromMap(Map<String, dynamic> json) => CreateTransactionResponseBody(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : CreateTransactionModel.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data?.toMap(),
    };
}

class CreateTransactionModel {
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
    double? point;
    String? status;
    String? description;
    int? userId;

    CreateTransactionModel({
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

    factory CreateTransactionModel.fromJson(String str) => CreateTransactionModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CreateTransactionModel.fromMap(Map<String, dynamic> json) => CreateTransactionModel(
        id: json["id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        phone: json["phone"],
        stockId: json["stock_id"],
        stockDetailsId: json["stock_details_id"],
        price: json["price"],
        product: json["product"],
        paymentMethod: json["payment_method"],
        point: json["point"]?.toDouble(),
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
        "point": point,
        "status": status,
        "description": description,
        "user_id": userId,
    };
}
