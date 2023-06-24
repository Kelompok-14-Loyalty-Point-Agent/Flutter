class VoucherModels {
    String status;
    String message;
    List<Datum> data;

    VoucherModels({
        required this.status,
        required this.message,
        required this.data,
    });

}

class Datum {
    int id;
    String product;
    String benefit;
    int cost;

    Datum({
        required this.id,
        required this.product,
        required this.benefit,
        required this.cost,
    });

    factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        product: json["product"],
        benefit: json["benefit"],
        cost: json["cost"],
    );

}
