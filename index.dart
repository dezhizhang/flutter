
// void printInfo() {
//    print('我是一个自定义方法');
// }
// main() {
//   printInfo();
// }

// main() {
//   var list = [1,2,3,4];
//   list.forEach((value) => {
//     print(value)
//   });

// }


class Person{
  var name = '123';
  void getInfo() {
    print('${this.name}');
  }
}

main() {
  var p1 = new Person();
  print(p1.name);
  p1.getInfo();
  
}
