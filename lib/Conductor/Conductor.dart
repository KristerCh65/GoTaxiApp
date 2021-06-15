class User {
  int _id;
  String seleccionarnumero;
  String colocarhora;

  //Constructor
  User(this._id, this.seleccionarnumero, this.colocarhora);

  //Set
  set id(int id) {
    this._id = id;
  }

  set email(String numero) {
    this.seleccionarnumero = numero;
  }

  set pass(String hora) {
    this.colocarhora = hora;
  }

  //Get
  int get id => this._id;
  String get numero => this.seleccionarnumero;
  String get hora => this.colocarhora;
}
