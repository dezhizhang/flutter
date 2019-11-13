class FocusModel {
  int code;
  String msg;
  List<FocusItemModel> data;
  FocusModel({this.code, this.msg, this.data});
  FocusModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = new List<FocusItemModel>();
      json['data'].forEach((v) {
        data.add(new FocusItemModel.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class FocusItemModel {
  int status;
  int addTime;
  String sId;
  String focusImg;
  int type;
  String title;
  String link;
  int sort;
  int iV;

  FocusItemModel({
      this.status,
      this.addTime,
      this.sId,
      this.focusImg,
      this.type,
      this.title,
      this.link,
      this.sort,
      this.iV});

  FocusItemModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    addTime = json['add_time'];
    sId = json['_id'];
    focusImg = json['focus_img'];
    type = json['type'];
    title = json['title'];
    link = json['link'];
    sort = json['sort'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['add_time'] = this.addTime;
    data['_id'] = this.sId;
    data['focus_img'] = this.focusImg;
    data['type'] = this.type;
    data['title'] = this.title;
    data['link'] = this.link;
    data['sort'] = this.sort;
    data['__v'] = this.iV;
    return data;
  }
}