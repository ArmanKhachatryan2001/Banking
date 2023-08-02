class UserData {
  var login;
  var password;
  var name;
  var surname;
  var email;
  var number;
  bool photoFlag = false;
  late final image;

  UserData({
    required this.login,
    required this.password,
    required this.name,
    required this.surname,
    required this.email,
    required this.number,
});
}