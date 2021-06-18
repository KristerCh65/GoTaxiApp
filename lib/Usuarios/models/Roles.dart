class Roles {
  int _idRol;
  String _rol;

  //Constructor
  Roles(this._idRol, this._rol);

  //Set

  set rol(String rol) {
    this._rol = rol;
  }

  set idRol(int idRol) {
    this._idRol = idRol;
  }

  //Get
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["idRol"] = _idRol;
    map["Rol"] = _rol;

    return map;
  }

  Roles.fromObject(dynamic r) {
    this._idRol = r["idRol"];
    this._rol = r["Rol"];
  }
}
