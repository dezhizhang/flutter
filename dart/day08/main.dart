abstract class Animal{
  eat();
}
 class Dog extends Animal{
  @override
  eat() {
    // TODO: implement eat
    print("小狗在吃东西");
  }
   
 }

 main() {
   Dog d = new Dog();
   d.eat();
 }