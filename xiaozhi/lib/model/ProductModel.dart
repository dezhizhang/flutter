class ProductModel {
  int code;
  String msg;
  bool success;
  List<ProductItemModel> data;
  int totalPage;

  ProductModel({this.code, this.msg, this.success, this.data, this.totalPage});

  ProductModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    success = json['success'];
    if (json['data'] != null) {
      data = new List<ProductItemModel>();
      json['data'].forEach((v) {
        data.add(new ProductItemModel.fromJson(v));
      });
    }
    totalPage = json['totalPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['totalPage'] = this.totalPage;
    return data;
  }
}

class ProductItemModel {
  int sort;
  String addTime;
  String sId;
  String productUrl;
  String productType;
  String price;
  String description;
  int iV;

  ProductItemModel({
      this.sort,
      this.addTime,
      this.sId,
      this.productUrl,
      this.productType,
      this.price,
      this.description,
      this.iV
    });

  ProductItemModel.fromJson(Map<String, dynamic> json) {
    sort = json['sort'];
    addTime = json['add_time'];
    sId = json['_id'];
    productUrl = json['product_url'];
    productType = json['product_type'];
    price = json['price'];
    description = json['description'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sort'] = this.sort;
    data['add_time'] = this.addTime;
    data['_id'] = this.sId;
    data['product_url'] = this.productUrl;
    data['product_type'] = this.productType;
    data['price'] = this.price;
    data['description'] = this.description;
    data['__v'] = this.iV;
    return data;
  }
}