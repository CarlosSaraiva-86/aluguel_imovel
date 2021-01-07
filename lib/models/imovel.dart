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

  ImovelModel(this.id, this.area, this.terreno, this.numQuartos,
      this.numBanheiro, this.andar, this.vagas, this.urlImagem);

  factory ImovelModel.fromJson(Map<String, dynamic> json) {
    return ImovelModel(
        int.parse(json['id']),
        int.parse(json['area']),
        int.parse(json['terreno']),
        int.parse(json['numQuartos']),
        int.parse(json['numBanheiro']),
        json['andar'],
        int.parse(json['vagas']),
        json['urlImagem']);
  }
}
