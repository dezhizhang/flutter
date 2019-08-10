class Person{
  String name;
  int age;
  Person(String name,int age) {
    this.name = name;
    this.age = age;
  }
  void printInfo() {
    print('${this.name} -----${this.age}');
  }
}

main() {
  Person p1 = new Person('张三',22);
  p1.printInfo();
}
