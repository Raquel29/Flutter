class Aluno {
  String _nome;
  int _matricula;
  
  Aluno(this._nome, this._matricula ); 
  
  String get nome => _nome;
  int  get matricula => _matricula;
  
  set nome(String  nome){
      _nome = nome;
  }
  set matricula(int matricula){
    _matricula = matricula;
  }
    
  @override
  String toString() {
  return "Aluno | Nome: $_nome, Matrícula: $_matricula";
  }
}