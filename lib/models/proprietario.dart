import 'endereco.dart';

class ProprietarioModel {
  int id;
  String nome;
  String telefone;
  EnderecoModel endereco;

  ProprietarioModel(this.id, this.nome, this.telefone, this.endereco);

  ProprietarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    telefone = json['telefone'];
    endereco = new EnderecoModel.fromJson(json['endereco']);
  }
}
