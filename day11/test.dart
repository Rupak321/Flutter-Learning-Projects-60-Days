abstract class Logger {
  void eat(){
    int a=10;

  }
}
class Dog implements Logger{
  @override
  void eat() {
    int b=20;
    print("Dog is eating");
  }
}
class Cat implements Logger{
  @override
  void eat() {
    int c=30;
    print("Cat is eating");
  }
}
void main(){
  Dog dog = Dog();
  Cat cat = Cat();
  dog.eat();
  cat.eat();

  dog.eat();
  
  cat.eat();
}