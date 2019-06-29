// import 'person.dart';

// main() {
//   var p1 = new Person('哈哈', 123);
//   p1.printInfo();

// }

// class Person{
//   static String name = '张三';

// }

// main() {
//   print(Person.name);
// }

// class Person{
//   static String name = '哈哈';
// }

// main() {
//   print(Person.name);
// }

// class Person{
//   static String name = '哈哈';
// }

// main() {
//   print(Person.name);

// }

// class Person {
//    String name = '哈哈';
//    int age = 123;
//    void printInfo() {
//      print('${this.name} ----${this.age}');
//    }
// }

// class Web extends Person{

// }

// main() {
//   var w = new Web();
//   w.printInfo();

// }

// class Person{
//   String name = '123';
//   int age = 12;
//   void printInfo() {
//     print('${this.name} ---${this.age}');
//   }
// }

// class Web extends Person{

// }

// main() {
//   var w = new Web();
//   w.printInfo();

// }

class Person{
  String name = '123';
  int age = 12;
  Person(String name,int age) {
    this.name = name;
    this.age = age;
  }
  printInfo() {
    print('${this.name} -----${this.age}');
  }
}


class Web extends Person {
  Web(String name, int age) : super(name, age);

}

main() {
  var w = new Web('哈哈',123);
  w.printInfo();
}