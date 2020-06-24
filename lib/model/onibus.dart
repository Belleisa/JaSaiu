class Onibus {
  String _id;
  String _nome;
  String _email;
  String _telefone;
  String _marca;
  String _modelo;
  String _placa;
  String _cidade;
  String _estado;

  Onibus(this._id, this._nome, this._email,  this._telefone, this._marca, this._modelo, this._placa, this._cidade, this._estado);

  Onibus.map(dynamic obj) {
    this._id = obj['id']; 
    this._nome = obj['nome']; 
    this._email = obj['email'];  
    this._telefone = obj['telefone'];  
    this._marca = obj['marca'];  
    this._modelo = obj['modelo']; 
    this._placa = obj['placa'];  
    this._cidade = obj['cidade'];  
    this._estado = obj['estado']; 
  }

  String get id => _id;
  String get nome => _nome;
  String get email => _email;
  String get telefone => _telefone;
  String get marca => _marca;
  String get modelo => _modelo;
  String get placa => _placa;
  String get cidade => _cidade;
  String get estado => _estado;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['nome'] = _nome;
    map['email'] = _email;
    map['telefone'] = _telefone;
    map['marca'] = _marca;
    map['modelo'] = _modelo;
    map['placa'] = _placa;
    map['cidade'] = _cidade;
    map['estado'] = _estado;

    return map;
  }

  Onibus.fromMap(Map<String, dynamic> map, String id){
    this._id = id ?? '';
    this._nome = map['nome'];
    this._email = map['email'];
    this._telefone = map['telefone'];
    this._marca = map['marca'];
    this._modelo = map['modelo'];
    this._placa = map['placa'];
    this._cidade = map['cidade'];
    this._estado = map['estado'];
  }

}