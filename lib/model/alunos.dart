class Aluno {
  String _id;
  String _nome;
  String _senha;
  String _email;
  String _nascimento;
  String _telefone;
  String _cpf;
  String _rg;
  String _endereco;
  String _bairro;
  String _cidade;
  String _estado;
  String _faculdade;
  String _faculcity;
  String _periodo;

  Aluno(this._id, this._nome, this._senha, this._email, this._nascimento, this._telefone, this._cpf, this._rg, this._endereco, this._bairro, this._cidade, this._estado, this._faculdade, this._faculcity, this._periodo);

  Aluno.map(dynamic obj) {
    this._id = obj['id']; 
    this._nome = obj['nome'];
    this._senha = obj['senha'];  
    this._email = obj['email'];  
    this._nascimento = obj['nascimento']; 
    this._telefone = obj['telefone'];  
    this._cpf = obj['cpf'];  
    this._rg = obj['rg']; 
    this._endereco = obj['endereco'];  
    this._bairro = obj['bairro'];  
    this._cidade = obj['cidade'];  
    this._estado = obj['estado']; 
    this._faculdade = obj['faculdade']; 
    this._faculcity = obj['faculcity']; 
    this._periodo = obj['periodo']; 
  }

  String get id => _id;
  String get nome => _nome;
  String get senha => _senha;
  String get email => _email;
  String get nascimento => _nascimento;
  String get telefone => _telefone;
  String get cpf => _cpf;
  String get rg => _rg;
  String get endereco => _endereco;
  String get bairro => _bairro;
  String get cidade => _cidade;
  String get estado => _estado;
  String get faculdade => _faculdade;
  String get faculcity => _faculcity;
  String get periodo => _periodo;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['nome'] = _nome;
    map['email'] = _email;
    map['nascimento'] = _nascimento;
    map['telefone'] = _telefone;
    map['cpf'] = _cpf;
    map['rg'] = _rg;
    map['endereco'] = _endereco;
    map['bairro'] = _bairro;
    map['cidade'] = _cidade;
    map['estado'] = _estado;
    map['faculdade'] = _faculdade;
    map['faculcity'] = _faculcity;
    map['periodo'] = _periodo;

    return map;
  }

  Aluno.fromMap(Map<String, dynamic> map, String id){
    this._id = id ?? '';
    this._nome = map['nome'];
    this._senha = map['senha'];
    this._email = map['email'];
    this._nascimento = map['nascimento'];
    this._telefone = map['telefone'];
    this._cpf = map['cpf'];
    this._rg = map['rg'];
    this._endereco = map['endereco'];
    this._bairro = map['bairro'];
    this._cidade = map['cidade'];
    this._estado = map['estado'];
    this._faculdade = map['faculdade'];
    this._faculcity = map['faculcity'];
    this._periodo = map['periodo'];
  }

}