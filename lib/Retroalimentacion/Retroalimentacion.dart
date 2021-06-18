class Retroalimentacion {
  int _id;
  String _nombre;
  String _comentario;
  double _puntuacion;

  Retroalimentacion(this._id, this._nombre, this._comentario, this._puntuacion);
  //set
  set id(int id) {
    this._id = id;
  }

  set nombre(String nombre) {
    this._nombre = nombre;
  }

  set comentario(String comentario) {
    this._comentario = comentario;
  }

  set puntuacion(double puntuacion) {
    this._puntuacion = puntuacion;
  }

  //get
  int get id => this._id;
  String get nombre => this._nombre;
  String get comentario => this._comentario;
  double get puntuacion => this._puntuacion;
}
