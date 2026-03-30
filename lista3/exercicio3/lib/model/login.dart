class Login {
  late String _user;
  late String _password;

  Login(String user, String password){
    this._user = user;
    this._password = password;
  }

  String get get_login => _user; 
  String get get_password => _password;

}