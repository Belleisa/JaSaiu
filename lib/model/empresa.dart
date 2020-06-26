class Empresa {
  String _id;
  String _nome;
  String _senha;
  String _email;
  String _telefone;
  String _cnpj;
  String _endereco;
  String _bairro;
  String _cidade;
  String _estado;

  

  Empresa(this._id, this._nome, this._senha, this._email, this._telefone, this._cnpj, this._endereco, this._bairro, this._cidade, this._estado);

  Empresa.map(dynamic obj) {
    this._id = obj['id']; 
    this._nome = obj['nome'];
    this._senha = obj['senha'];  
    this._email = obj['email'];  
    this._telefone = obj['telefone'];  
    this._cnpj = obj['cnpj']; 
    this._endereco = obj['endereco'];  
    this._bairro = obj['bairro'];  
    this._cidade = obj['cidade'];  
    this._estado = obj['estado']; 
  }

  String get id => _id;
  String get nome => _nome;
  String get senha => _senha;
  String get email => _email;
  String get telefone => _telefone;
  String get cnpj => _cnpj;
  String get endereco => _endereco;
  String get bairro => _bairro;
  String get cidade => _cidade;
  String get estado => _estado;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['nome'] = _nome;
    map['senha'] = _senha;
    map['email'] = _email;
    map['telefone'] = _telefone;
    map['cnpj'] = _cnpj;
    map['endereco'] = _endereco;
    map['bairro'] = _bairro;
    map['cidade'] = _cidade;
    map['estado'] = _estado;

    return map;
  }

  Empresa.fromMap(Map<String, dynamic> map, String id){
    this._id = id ?? '';
    this._nome = map['nome'];
    this._senha = map['senha'];
    this._email = map['email'];
    this._telefone = map['telefone'];
    this._cnpj = map['cnpj'];
    this._endereco = map['endereco'];
    this._bairro = map['bairro'];
    this._cidade = map['cidade'];
    this._estado = map['estado'];
  }

}