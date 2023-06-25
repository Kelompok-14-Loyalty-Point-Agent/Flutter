class VoucherModels {
  String status;
  String message;
  List<VoucherData> data;

  VoucherModels({
    required this.status,
    required this.message,
    required this.data,
  });
}

class VoucherData {
  int? id;
  String? product;
  String? benefit;
  int cost;

  VoucherData({
    this.id,
    this.product,
    this.benefit,
    this.cost = 0,
  });

  factory VoucherData.fromMap(Map<String, dynamic> json) => VoucherData(
        id: json["id"],
        product: json["product"],
        benefit: json["benefit"],
        cost: json["cost"],
      );
}
