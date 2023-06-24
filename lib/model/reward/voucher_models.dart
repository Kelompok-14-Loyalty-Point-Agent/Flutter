class VoucherModels {
  String? status;
  String? message;
  List<Data>? data;

  VoucherModels({this.status, this.message, this.data});

  VoucherModels.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
}

class Data {
  int? id;
  String? product;
  String? benefit;
  int? cost;

  Data({this.id, this.product, this.benefit, this.cost});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product = json['product'];
    benefit = json['benefit'];
    cost = json['cost'];
  }

  get data => null;
}
