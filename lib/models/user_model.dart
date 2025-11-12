class UserModel {
  String name;
  String email;
  String image;
  String city;
  int age;

  UserModel({
    required this.name,
    required this.image,
    required this.email,
    required this.city,
    required this.age,
  });
}

class Users {
  List<UserModel> users;

  Users({required this.users});

  factory Users.fromJson({required Map<String, dynamic> json}) {
    List<UserModel> tempList = json["results"].map<UserModel>((user) {
      return UserModel(
        name: "${user["name"]["first"]} ${user["name"]["last"]}",
        image: user["picture"]["large"],
        email: user["email"],
        city: user["location"]["city"],
        age: user["dob"]["age"],
      );
    }).toList();

    return Users(users: tempList);
  }
}
