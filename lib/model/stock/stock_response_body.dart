import 'dart:convert';

import 'package:flutter/material.dart';

class StockResponseBody {
  String? status;
  String? message;
  List<StockModel>? data;

  StockResponseBody({
    this.status,
    this.message,
    this.data,
  });

  factory StockResponseBody.fromJson(String str) =>
      StockResponseBody.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StockResponseBody.fromMap(Map<String, dynamic> json) =>
      StockResponseBody(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<StockModel>.from(
                json["data"]!.map((x) => StockModel.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class StockModel with ChangeNotifier {
  int? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  int? stockId;
  int? stock;
  int? price;
  int? quantity;

  StockModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.stockId,
    this.stock,
    this.price,
    this.quantity,
  });

  factory StockModel.fromJson(String str) =>
      StockModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StockModel.fromMap(Map<String, dynamic> json) => StockModel(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        stockId: json["stock_id"],
        stock: json["stock"],
        price: json["price"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "stock_id": stockId,
        "stock": stock,
        "price": price,
        "quantity": quantity,
      };
}
