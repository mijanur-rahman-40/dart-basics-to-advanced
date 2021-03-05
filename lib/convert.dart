void main(List<String> args) {
  var user = User('Mijanur', 23);
  print(user.toJson());
}

class User {
  String name;
  int age;

  User(this.name, this.age);

  Map toJson() => {
        'name': name,
        'age': age,
      };
}
