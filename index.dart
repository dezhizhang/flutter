
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


// class Person{
//   var name = '123';
//   void getInfo() {
//     print('${this.name}');
//   }
// }

// main() {
//   var p1 = new Person();
//   print(p1.name);
//   p1.getInfo();
  
// }

// class Person{
//   String name;
//   int age;
//   Person(String name,int age) {
//     this.name = name;
//     this.age = age;
//   }
//   void printInfo() {
//     print('${this.name}-----${this.age}');
//   }
// }

// main() {
//   var p1 = new Person('张三', 20);
//   p1.printInfo();
// }

// class Person{
//   String name;
//   int age;
//   Person(String name,int age) {
//     this.name = name;
//     this.age = age;
//   }
//   void printInfo() {
//     print('${this.name} --- ${this.age}');

//   }
// }

// main() {
//   var p1 = new Person('哈哈',123);
//   p1.printInfo();
// }

class Person{
  String name;
  int age;
  Person(String name,int age) {
    this.name = name;
    this.age = age;
  }
  void printInfo() {
    print('${this.name} ----${this.age}');
  }
}

main() {
  var p1 = new Person('哈哈', 123);
  p1.printInfo();
  
}