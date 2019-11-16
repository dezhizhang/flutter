class CategoryModel {
  int code;
  String msg;
  bool success;
  List<CategoryItemModel> data;

  CategoryModel({this.code, this.msg, this.success, this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    success = json['success'];
    if (json['data'] != null) {
      data = new List<CategoryItemModel>();
      json['data'].forEach((v) {
        data.add(new CategoryItemModel.fromJson(v));
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

class CategoryItemModel {
  int addTime;
  String sId;
  String name;
  int sort;
  int iV;

  CategoryItemModel({this.addTime, this.sId, this.name, this.sort, this.iV});

  CategoryItemModel.fromJson(Map<String, dynamic> json) {
    addTime = json['add_time'];
    sId = json['_id'];
    name = json['name'];
    sort = json['sort'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['add_time'] = this.addTime;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['sort'] = this.sort;
    data['__v'] = this.iV;
    return data;
  }
}