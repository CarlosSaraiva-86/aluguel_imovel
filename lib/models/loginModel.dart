class LoginModel {
  int id;
  String user;
  String password;

  LoginModel(this.password, this.user);

factory ImovelModel.fromJson(Map<String, dynamic> json) {
    return ImovelModel(
      json['user'],
      json['password']
    );
}
