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

void process(PaymentMethod m) { //takes one input and m is just a variable that can hold any payment type,
  switch (m) {
    case Card(number: var num)://stores the card number in num variable and prints it
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
    process(p);// calls everything step wise step
  }
}