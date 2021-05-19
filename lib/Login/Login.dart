class User {
  int _id;
  String _email;
  String _password;

  //Constructor
  User(this._id, this._email, this._password);

  //Set
  set id(int id) {
    this._id = id;
  }

  set email(String email) {
    this._email = email;
  }

  set pass(String pass) {
    this._password = pass;
  }

  //Get
  int get id => this._id;
  String get email => this._email;
  String get password => this._password;
}
