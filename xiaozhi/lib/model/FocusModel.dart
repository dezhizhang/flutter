class FocusModel{
  int status;
  int type;
  int sort;
  String sId;
  String title;
  String focus_img;
  String add_time;
  String link;
  FocusModel({this.status,this.type,this.sort,this.sId,this.title,this.focus_img,this.add_time,this.link});
  FocusModel.fromJson(Map jsonData) {
    this.status = jsonData['status'];
    this.type = jsonData['type'];
    this.sort = jsonData['sort'];
    this.sId = jsonData['_id'];
    this.title = jsonData['title'];
    this.focus_img = jsonData['focus_img'];
    this.add_time = jsonData['add_time'];
    this.link = jsonData['link'];
  }

  

}