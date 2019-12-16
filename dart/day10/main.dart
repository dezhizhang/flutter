abstract class DB{
  add();
  delete();
  edit();
  find();
}

class MySql implements DB{
  @override
  add() {
    // TODO: implement add
    return null;
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  edit() {
    // TODO: implement edit
    return null;
  }

  @override
  find() {
    // TODO: implement find
    return null;
  }
  
}

main() {
  MySql mysql = new MySql();
  mysql.add();
  mysql.delete();
  mysql.edit();
  mysql.find();
  
}