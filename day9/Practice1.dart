import 'dart:io';
class just{
  double x;
  double y;
  just(this.x,this.y);
}
void main(){
 var a=just(1.0, 2.0);
 print( "The passed values are: ${a.x} and ${a.y}" );
}