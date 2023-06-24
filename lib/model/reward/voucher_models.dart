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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product'] = product;
    data['benefit'] = benefit;
    data['cost'] = cost;
    return data;
  }
}