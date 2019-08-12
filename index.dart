abstract class Db{
  add();
  save();
  delete();
}

class Mysql implements Db{
  @override
  add() {
    // TODO: implement add
    return 'this is a add';
  }
  @override
  save() {
    // TODO: implement save
    return 'this is a save';
  }
  @override
  delete() {
    // TODO: implement delete
    return 'this is a delete';
  }
}

main() {
  Mysql sql = new Mysql();
  print(sql.save());

}
