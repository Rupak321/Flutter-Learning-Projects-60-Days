class Box<T> {
  T value;

  Box(this.value);
}
void main() {
  var intBox = Box<int>(10);
  var stringBox = Box<String>("Hello");

  print(intBox.value);   
  print(stringBox.value); 
}