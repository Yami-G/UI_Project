class LoginUser {
  final String phone, password;
  LoginUser({required this.phone, required this.password});

  factory LoginUser.fromJson(json) => LoginUser(password: json['password'], phone: json['phone']);

  static Map<String, dynamic> toMap({required String phone, required String password}) =>
      <String, dynamic>{'phone': phone, 'password': password};
}
