import 'dart:io'; 
void main() {



  //creating contact cards using maps
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


  // here contact card is being printed using function generateContactCard which takes a map as input and returns a formatted string
  print(generateContactCard(contact1));

  print(generateContactCard(contact2));
}



// THis Function Takes a contact map Returns a formatted string to generate contact card 
String generateContactCard(Map<String, String?> contact) {
  //using stringbuffer to build the contact card string 
  StringBuffer cardBuffer = StringBuffer();

  cardBuffer.writeln("Name:  ${contact['name'] ?? 'Unknown'}");
  
  cardBuffer.writeln("Phone: ${contact['phone'] ?? 'N/A'}");
  cardBuffer.writeln("Email: ${contact['email'] ?? 'N/A'}");
  
  return cardBuffer.toString();
  //finally returning the generated contact card as a string
}
