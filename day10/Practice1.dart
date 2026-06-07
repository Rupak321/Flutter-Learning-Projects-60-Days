import 'dart:io';
mixin Logger {
  void log(String message) {
    print("[LOG]: $message");
  }
}

class Employee with Logger {
  String name;
  double baseSalary;

  Employee(this.name, this.baseSalary);

  double calculatePay() {
    return baseSalary;
  }
}

class Manager extends Employee {
  double bonus;

  Manager(String name, double baseSalary, this.bonus)
      : super(name, baseSalary);

  @override
  double calculatePay() {
    return baseSalary + bonus;
  }
}

class Developer extends Employee {
  int overtimeHours;
  double overtimeRate;

  Developer(
    String name,
    double baseSalary,
    this.overtimeHours,
    this.overtimeRate,
  ) : super(name, baseSalary);

  @override
  double calculatePay() {
    return baseSalary + (overtimeHours * overtimeRate);
  }
}

void main() {
  List<Employee> employees = [
    Manager("Raja Indra", 50000, 10000),
    Developer("Rupak Pandey", 40000, 10, 500),
    Manager("Soham", 60000, 15000),
    Developer("Hari Sharanam", 45000, 8, 600),
  ];

  for (var employee in employees) {
    employee.log("Calculating pay for ${employee.name}");

    print(
      "${employee.name}'s Salary: Rs.${employee.calculatePay()}",
    );
  }
}