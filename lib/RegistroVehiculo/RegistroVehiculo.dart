class RegistroVeihiculo {
  int _id;
  String _marca;
  String _modelo;
  String _tipo;
  String _color;
  String _chasis;
  String _placa;

  RegistroVeihiculo(this._id, this._marca, this._modelo, this._tipo,
      this._color, this._chasis, this._placa);

  //set
  set id(int id) {
    this._id = id;
  }

  set marca(var marca) {
    this._marca = marca;
  }

  set modelo(var modelo) {
    this._modelo = modelo;
  }

  set tipo(var tipo) {
    this._tipo = tipo;
  }

  set color(String color) {
    this._placa = color;
  }

  set chasis(String chasis) {
    this._chasis = chasis;
  }

  set placa(String placa) {
    this._placa = placa;
  }

  //get
  int get id => this._id;
  String get marca => this._marca;
  String get modelo => this._modelo;
  String get tipo => this._tipo;
  String get color => this._color;
  String get chasis => this._chasis;
  String get placa => this._placa;
}
