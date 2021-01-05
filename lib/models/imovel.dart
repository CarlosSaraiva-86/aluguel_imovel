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
      this.endereco,
      this.proprietario,
      this.urlImagem);
}
