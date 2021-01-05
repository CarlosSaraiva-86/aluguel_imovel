import 'endereco.dart';

class ProprietarioModel {
  int id;
  String nome;
  String telefone;
  EnderecoModel endereco;

  ProprietarioModel(this.id, this.nome, this.telefone, this.endereco);
}
