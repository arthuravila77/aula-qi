void main() {
  Funcionario f = Funcionario(
    nome: "Edmilson Silva", 
    telefone: "(11)98899898",
    email: "edmilson@gmail.com",
    cargo: "Almxarifado"
);
print(f);
}

abstract class Pessoa {
  String? _email;
  String? _telefone;

  Pessoa({String email = "", String telefone = " "}) {
    this._email = email;
    this._telefone = telefone;
  }
  String? get email => this._email;
  String? get telefone => this._telefone;
  set email(String?valor) => this._email = valor;
  set telefone(String?valor) => this._telefone = valor;

  String toString() {
    return "Email:${this._email}\n Telefone:${this._telefone}\n";
  }
}

class Funcionario extends Pessoa {
  String? _cargo;
  String? _nome;
  
  Funcionario({
    required String nome,
    required String telefone,
    String email = "",
    String cargo = ""
  }){
    this._nome = nome;
    super._telefone = telefone;
    super._email = email;
    this._cargo = cargo;
  }
  String? get nome => this._nome;
  String? get cargo => this._cargo;
    set nome (String? valor) => this._nome = valor;
  set cargo (String? valor) => this._cargo = valor;
  
  String toString () {
    return "Nome: ${this._nome}\n" +
      "Cargo: ${this._cargo}\n" +
      "Email ${super._email}\n" +
      "Telefone: ${super._telefone}\n";
  }
}
