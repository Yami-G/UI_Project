class LoginUser {
  final String phone, password, name, email, country, imagePath;

  LoginUser({
    required this.phone,
    required this.password,
    required this.name,
    required this.email,
    required this.country,
    required this.imagePath,
  });

  factory LoginUser.fromJson(json) => LoginUser(
        password: json['password'],
        phone: json['phone'],
        name: json['name'],
        email: json['email'],
        country: json['country'],
        imagePath: json['imagePath'],
      );

  static Map<String, dynamic> toMap({
    required String phone,
    required String password,
    required String name,
    required String email,
    required String country,
    required String imagePath,
  }) =>
      <String, dynamic>{
        'phone': phone,
        'password': password,
        'name': name,
        'email': email,
        'country': country,
        'imagePath': imagePath,
      };
}
