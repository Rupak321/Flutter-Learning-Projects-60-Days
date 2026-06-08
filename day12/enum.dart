import 'dart:io';
enum Status{//Only foxed set of vales
  active,
  paused, 
  done
}
void main(){
  Status s= Status.paused;
  if(s==Status.active){
    print("The task is going on");
  }
  else if(s==Status.paused){
    print("Task is paused");
  }
  else{
    print("The task is already completed");
  }
}