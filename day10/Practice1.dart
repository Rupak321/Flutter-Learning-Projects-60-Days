mixin Logger {// resuable code for logginh
  void log(String message) {// creating a function log so that any classusing this can print logs
    print("[LOG]: $message");
  }
}
//creating a base class employee 
class Employee with Logger { //
  String name;
  double baseSalary;

  Employee(this.name, this.baseSalary); //sets name and base salary when creating the employee object

  double calculatePay() {
    return baseSalary;
  }
}

class Manager extends Employee {
  double bonus;

  Manager(String name, double baseSalary, this.bonus)//manager sanga chai name, base salary and bonus hunxa so it send it to the main class employee as it does not have that data

      : super(name, baseSalary); //super says go to the main class this is sending the name and base salary to the main class employee when creating the manager object

  @override
  double calculatePay() {
    return baseSalary + bonus;// manager sallery has bonus pani
  }
}

class Developer extends Employee {
  int overtimeHours; 
  double overtimeRate;

  Developer(
    String name, //giving name and base salary 
    double baseSalary,
    this.overtimeHours,// stores the number of overtime hours worked by the developer
    this.overtimeRate,
  ) : super(name, baseSalary);

  @override
  double calculatePay() {
    return baseSalary + (overtimeHours * overtimeRate);
  }
}

void main() {
  List<Employee> employees = [// creating a list of employee objects which includes both manager and developer objects
    Manager("Raja Indra", 50000, 10000),
    Developer("Rupak Pandey", 40000, 10, 500),
    Manager("Soham", 60000, 15000),
    Developer("Hari Sharanam", 45000, 8, 600),
  ];

  for (var employee in employees) {
    

    print(
      "${employee.name}'s Salary: Rs.${employee.calculatePay()}",
    );
  }
}