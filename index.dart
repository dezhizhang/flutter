abstract class Animal{
  eat();

}

class Dog extends Animal{
  @override
  eat() {
  
    return '你是那个蛾';
  }
}

main() {
  var d = new Dog();
  print(d.eat());

}