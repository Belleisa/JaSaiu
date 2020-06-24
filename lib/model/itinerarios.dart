class Itinerario {
  String _id;
  String _linha;
  String _periodo;
  String _horaida;
  String _horavolta;

  Itinerario(this._id, this._linha, this._horaida, this._horavolta, this._periodo);

  Itinerario.map(dynamic obj) {
    this._id = obj['id']; 
    this._linha = obj['linha'];
    this._horaida = obj['horaida'];
    this._horavolta = obj['horavolta'];
    this._periodo = obj['periodo']; 
  }

  String get id => _id;
  String get linha => _linha;
  String get horaida => _horaida;
  String get horavolta => _horavolta;
  String get periodo => _periodo;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['linha'] = _linha;
    map['horaida'] = _horaida;
    map['horavolta'] = _horavolta;
    map['periodo'] = _periodo;

    return map;
  }

  Itinerario.fromMap(Map<String, dynamic> map, String id){
    this._id = id ?? '';
    this._linha = map['linha'];
    this._horaida = map['horaida'];
    this._horavolta = map['horavolta'];
    this._periodo = map['periodo'];
  }

}