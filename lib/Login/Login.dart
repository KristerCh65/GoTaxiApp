class User {
  String _email;
  String _password;

  //Constructor
  User(this._email, this._password);

  //Set

  set email(String email) {
    this._email = email;
  }

  set pass(String pass) {
    this._password = pass;
  }

  //Get
  String get email => this._email;
  String get password => this._password;
}
