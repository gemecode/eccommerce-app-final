class MyOrderModel {
  int? customer;
  String? orders;

  MyOrderModel({this.customer, this.orders});

  MyOrderModel.fromJson(Map<String, dynamic> json) {
    customer = json['customer'];
    orders = json['orders'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer'] = this.customer;
    data['orders'] = this.orders;
    return data;
  }
}