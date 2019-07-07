

class FocusModel{
  String id;
  String title;
  String status;
  String pic;
  String url;

  FocusModel({this.id,this.title,this.status,this.pic,this.url});
  FocusModel.formJSON(Map json) {
    this.id = json['_id'];
    this.title = json['title'];
    this.status = json['status'];
    this.pic = json['pic'];
    this.url = json['url'];

  }

}