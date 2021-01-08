import 'proprietario.dart';
import 'endereco.dart';

class ImovelModel {
  int id;
  int area;
  int terreno;
  int numQuartos;
  int numBanheiro;
  String andar;
  int vagas;
  String urlImagem;
  ProprietarioModel proprietario;
  EnderecoModel endereco;

  ImovelModel(
      this.id,
      this.area,
      this.terreno,
      this.numQuartos,
      this.numBanheiro,
      this.andar,
      this.vagas,
      this.urlImagem,
      this.proprietario,
      this.endereco);

  ImovelModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    area = json['area'];
    terreno = json['terreno'];
    numQuartos = json['numQuartos'];
    numBanheiro = json['numBanheiro'];
    andar = json['andar'];
    vagas = json['vagas'];
    urlImagem = json['urlImagem'];
    proprietario = new ProprietarioModel.fromJson(json['proprietario']);
    endereco = new EnderecoModel.fromJson(json['endereco']);
  }
}
