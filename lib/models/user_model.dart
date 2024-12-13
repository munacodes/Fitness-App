class UserModel {
  final String? name;
  final String? email;

  UserModel({this.name, this.email});

  // Convert UserModel to a Map for saving in SharedPreferences.
  Map<String, String?> toMap() {
    return {
      'name': name,
      'email': email,
    };
  }

  // Create UserModel from a Map.
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      email: map['email'],
    );
  }
}
