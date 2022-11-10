class User {
  String id;
  String? avatar;
  String firstName;
  String lastName;
  String email;
  String role;

  User({
    required this.id,
    required this.avatar,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.role,
  });

  User.fromJson(Map json)
      : id = json.containsKey('id') && json['id'] != null ? json['id'] : 0,
        email =
        json.containsKey('email') && json['email'] != null
            ? json['email']
            : '',
        role = json.containsKey('role') && json['role'] != null
            ? json['role']
            : '',
        avatar = json.containsKey('avatar') && json['avatar'] != null
            ? json['avatar']
            : null,
        firstName = json.containsKey('first_name') && json['first_name'] != null
            ? json['first_name']
            : 0,
        lastName =
        json.containsKey('last_name') && json['last_name'] != null
            ? json['last_name']
            : null;
  }

