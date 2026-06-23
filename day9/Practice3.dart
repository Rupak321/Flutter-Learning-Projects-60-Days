class Profile{
  final String username;
  Profile(String name): assert(name.isNotEmpty, "Username cannot be empty"), username= name.toLowerCase();
}

void main(){
  var user= Profile("");
 
  print(user.username);

}