import 'dart:convert';

class RedeemVoucherResponseBody {
    String? status;
    String? message;
    RedeemVoucherModel? data;

    RedeemVoucherResponseBody({
        this.status,
        this.message,
        this.data,
    });

    factory RedeemVoucherResponseBody.fromJson(String str) => RedeemVoucherResponseBody.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RedeemVoucherResponseBody.fromMap(Map<String, dynamic> json) => RedeemVoucherResponseBody(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : RedeemVoucherModel.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data?.toMap(),
    };
}

class RedeemVoucherModel {
    int? id;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;
    String? product;
    String? paymentMethod;
    DateTime? dateExchange;
    int? cost;
    int? userId;

    RedeemVoucherModel({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.product,
        this.paymentMethod,
        this.dateExchange,
        this.cost,
        this.userId,
    });

    factory RedeemVoucherModel.fromJson(String str) => RedeemVoucherModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RedeemVoucherModel.fromMap(Map<String, dynamic> json) => RedeemVoucherModel(
        id: json["id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        product: json["product"],
        paymentMethod: json["payment_method"],
        dateExchange: json["date_exchange"] == null ? null : DateTime.parse(json["date_exchange"]),
        cost: json["cost"],
        userId: json["user_id"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "product": product,
        "payment_method": paymentMethod,
        "date_exchange": dateExchange?.toIso8601String(),
        "cost": cost,
        "user_id": userId,
    };
}
