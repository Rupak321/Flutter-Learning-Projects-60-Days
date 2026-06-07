import 'dart:io'; 
void main() {

  Map<String, String?> contact1 = {
    "name": "Rupak Pandey",
    "phone": "9849324945",
    "email": "rupakpandey431@gmail.com",
  };

  Map<String, String?> contact2 = {
    "name": "Bikash Dhami",
    "phone": null, 
    "email": null, 
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
