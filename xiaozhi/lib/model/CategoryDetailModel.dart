
class CategoryDetailModel {
  int code;
  String msg;
  bool success;
  List<CategoryDetailItemModel> data;

  CategoryDetailModel({this.code, this.msg, this.success, this.data});

  CategoryDetailModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    success = json['success'];
    if (json['data'] != null) {
      data = new List<CategoryDetailItemModel>();
      json['data'].forEach((v) {
        data.add(new CategoryDetailItemModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryDetailItemModel {
  int addTime;
  String sId;
  String classifyImg;
  String classifyId;
  String title;
  String price;
  int sort;
  int iV;

  CategoryDetailItemModel(
      {this.addTime,
      this.sId,
      this.classifyImg,
      this.classifyId,
      this.title,
      this.price,
      this.sort,
      this.iV});

  CategoryDetailItemModel.fromJson(Map<String, dynamic> json) {
    addTime = json['add_time'];
    sId = json['_id'];
    classifyImg = json['classify_img'];
    classifyId = json['classify_id'];
    title = json['title'];
    price = json['price'];
    sort = json['sort'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['add_time'] = this.addTime;
    data['_id'] = this.sId;
    data['classify_img'] = this.classifyImg;
    data['classify_id'] = this.classifyId;
    data['title'] = this.title;
    data['price'] = this.price;
    data['sort'] = this.sort;
    data['__v'] = this.iV;
    return data;
  }
}