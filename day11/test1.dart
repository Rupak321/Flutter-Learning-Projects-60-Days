class one{
  void first(){
    print("A");
  }
}
class two extends one{

  
}
class three implements one{

void first(){
  print("B");
}

}
void main(){
  two t = two();
  three th = three();
  t.first();
  th.first();
  th.first();
  }