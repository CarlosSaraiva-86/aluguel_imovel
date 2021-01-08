class EnderecoModel {
  String endereco;
  int numero;
  String bairro;
  String cidade;
  String uf;
  String cep;

  EnderecoModel(
      this.bairro, this.cep, this.cidade, this.endereco, this.numero, this.uf);

  EnderecoModel.fromJson(Map<String, dynamic> json) {
    endereco = json['endereco'];
    numero = json['numero'];
    bairro = json['bairro'];
    cidade = json['cidade'];
    uf = json['uf'];
    cep = json['cep'];
  }
}
