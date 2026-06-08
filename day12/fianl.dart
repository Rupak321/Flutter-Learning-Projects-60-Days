enum Status {
  active("Active"),
  inactive("Inactive");

  final String label;
  const Status(this.label);
}

abstract class Identifiable {
  dynamic get id;
}

class Repository<T extends Identifiable> {
  final List<T> _items = [];

  void add(T item) {
    _items.add(item);
  }

  List<T> getAll() {
    return _items;
  }

  T? findById(dynamic id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (e) {
      return null;
    }
  }
}

class User implements Identifiable {
  @override
  final int id;
  final String name;
  final Status status;

  User(this.id, this.name, this.status);
}

class Product implements Identifiable {
  @override
  final int id;
  final String title;
  final double price;

  Product(this.id, this.title, this.price);
}

extension UserExtension on User {
  String display() {
    return "User: $name (${status.label})";
  }
}

void main() {
  var userRepo = Repository<User>();
  var productRepo = Repository<Product>();

  userRepo.add(User(1, "Rupak", Status.active));
  userRepo.add(User(2, "Soham", Status.inactive));

  productRepo.add(Product(1, "Laptop", 1200.0));
  productRepo.add(Product(2, "Mouse", 25.0));

  print("=== All Users ===");
  for (var user in userRepo.getAll()) {
    print(user.display());
  }

  var foundUser = userRepo.findById(1);
  print("\n=== Found User ===");
  print(foundUser?.display() ?? "User not found");

  print("\n=== All Products ===");
  for (var product in productRepo.getAll()) {
    print("Product: ${product.title}, Price: \$${product.price}");
  }

  var foundProduct = productRepo.findById(2);
  print("\n=== Found Product ===");
  if (foundProduct != null) {
    print("Product: ${foundProduct.title}, Price: \$${foundProduct.price}");
  } else {
    print("Product not found");
  }
}