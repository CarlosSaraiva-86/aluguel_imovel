class LoginModel {
  int id;
  String user;
  String password;

  LoginModel(this.password, this.user);

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(json['user'], json['password']);
  }
}
