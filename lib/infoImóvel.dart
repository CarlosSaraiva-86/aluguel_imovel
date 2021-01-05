import 'package:flutter/material.dart';
import 'anuncieTela/anuncie_Endereço.dart';
import 'buscar.dart';
import 'cadastrar.dart';
import 'conta.dart';
import 'main.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import './models/imovel.dart';

void main() => runApp(Myapp()); //Inica Aplicação
List<ImovelModel> imoveis = new List<ImovelModel>();

class Myapp extends StatelessWidget {
  // Sem Interação
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Informações do Imovel", //Titulo
      theme: ThemeData(
        // Config do tema
        primaryColor: Colors.blue,
      ),
      home: TelaInfo(),
    );
  }
}

class TelaInfo extends StatefulWidget {
  @override
  _TelaInfoState createState() => _TelaInfoState();
}

class _TelaInfoState extends State<TelaInfo> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Informações do Imóvel"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text("conta@email.com"),
                accountName: Text("Thomaz Oliveira "),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "T",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("Buscar"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaBuscar()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.house),
                title: Text("Anuncie"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaAnuncieEnd()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Minha conta"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaConta()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Login"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaLogin()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.app_registration),
                title: Text("Cadastro"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaCadastrar()),
                  );
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 250.0,
                  width: 500.0,
                  child: Image.asset("imagens/casa2.jpg", fit: BoxFit.cover),
                ),
                SizedBox(
                    width: 600.0,
                    height: 40.0,
                    child: const Card(
                        child: Text(
                      'Endereço do Imóvel',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
                SizedBox(width: 600.0, child: const Card(child: Text('Rua:'))),
                SizedBox(
                    width: 600.0, child: const Card(child: Text('Numero:'))),
                SizedBox(
                    width: 600.0, child: const Card(child: Text('Bairro:'))),
                SizedBox(
                    width: 600.0, child: const Card(child: Text('Cidade:'))),
                SizedBox(
                    width: 600.0, child: const Card(child: Text('Estado:'))),
                SizedBox(width: 600.0, child: const Card(child: Text('CEP:'))),
                SizedBox(
                    width: 600.0,
                    height: 40.0,
                    child: const Card(
                        child: Text(
                      'Dados Principais',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
                SizedBox(
                    width: 600.0,
                    child: const Card(child: Text('Área do Imóvel:'))),
                SizedBox(
                    width: 600.0,
                    child: const Card(child: Text('Área do Terreno:'))),
                SizedBox(width: 600.0, child: const Card(child: Text('Sala:'))),
                SizedBox(
                    width: 600.0, child: const Card(child: Text('Cozinha:'))),
                SizedBox(
                    width: 600.0, child: const Card(child: Text('Quartos:'))),
                SizedBox(
                    width: 600.0, child: const Card(child: Text('Banheiros:'))),
                SizedBox(
                    width: 600.0, child: const Card(child: Text('Andar:'))),
                SizedBox(
                    width: 600.0,
                    child: const Card(
                        child: Text(
                      'Garagem:',
                    ))),
                SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset("imagens/wpp2.jpg", fit: BoxFit.cover),
                ),
                SizedBox(
                    width: 240.0,
                    child: const Card(
                        child: Text(
                      'Converse direto com o proprietário!',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
              ],
            ),
          ),
        ));
  }

  listarInformacoesImovel(ImovelModel model) async {
    var url = 'https://aluguel-api.herokuapp.com/api/Imovel/Set';

    // Await the http get response, then decode the json-formatted response.
    var response = await http.post(url, body: model);
    if (response.statusCode == 200) {}
  }
}
