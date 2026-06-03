void main() {
  // Step 1: Model contacts using Maps with nullable values
  Map<String, String?> contact1 = {
    "name": "Alice Smith",
    "phone": "+1-555-0199",
    "email": "alice@example.com",
  };

  Map<String, String?> contact2 = {
    "name": "Bob Jones",
    "phone": null, // Missing data
    "email": null, // Missing data
  };

  print("--- CONTACT CARD 1 ---");
  print(generateContactCard(contact1));

  print("--- CONTACT CARD 2 ---");
  print(generateContactCard(contact2));
}

String generateContactCard(Map<String, String?> contact) {
  StringBuffer cardBuffer = StringBuffer();

  cardBuffer.writeln("Name:  ${contact['name'] ?? 'Unknown'}");
  
  cardBuffer.writeln("Phone: ${contact['phone'] ?? 'N/A'}");
  cardBuffer.writeln("Email: ${contact['email'] ?? 'N/A'}");
  
  return cardBuffer.toString();
}