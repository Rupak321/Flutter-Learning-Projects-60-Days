import 'dart:io';
class bankaccount{
  double _balance;
  bankaccount(this._balance);//sets the starting balance of account when the object is created
  void deposit(double amount) {// deposit function
    if (amount > 0) {
      _balance += amount;
      print("Deposited: ${amount}");
    } else {
      print("Error: Deposit amount must be positive.");
    }
  }
  void withdraw(double withamount){//withdraw function
    if (withamount > 0) {
      if (withamount <= _balance) {
        _balance -= withamount;
        print("Withdrew: ${withamount}");
      } else {
        print("Insficent balance.");
      }
    } else {
      print("PLz entetr positive number.");
    }
  }
}
void main() {
  bankaccount a = bankaccount(0); //creates account a with balace 0
  print("Enter amount to deposit: ");
  double amount = double.parse(stdin.readLineSync()!);
  
  a.deposit(amount);
  a.deposit(100.0);
  
  a.deposit(-50.0); 
  print("Current Balance: ${a._balance}");
   
   print('Enter amount to withdraw');
  double withamount = double.parse(stdin.readLineSync()!);

  a.withdraw(withamount);
  print('CUrrent Balance: ${a._balance}');
  


}