import 'dart:io'; 
sealed class PaymentMethod {}

class Card extends PaymentMethod {
  final String number;
  Card(this.number);
}

class Wallet extends PaymentMethod {
  final String app;
  Wallet(this.app);
}

class Cash extends PaymentMethod {
  final double amount;
  Cash(this.amount);
}

void process(PaymentMethod m) {
  switch (m) {
    case Card(number: var num):
      print("Paid with Card: $num");

    case Wallet(app: var appName):
      print("Paid with Wallet: $appName");

    case Cash(amount: var amt):
      print("Paid Cash: Rs $amt");
  }
}

void main() {
  var payments = [
    Card("1234-5678"),
    Wallet("eSewa"),
    Cash(500.0),
  ];

  for (var p in payments) {
    process(p);
  }
}