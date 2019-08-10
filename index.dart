class Person{
  int age;
  static String name = '123';
  Person(this.age);


}

main() {
  Person p = new Person(22);
  print(Person.name);
}