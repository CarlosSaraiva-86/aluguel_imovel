import 'package:aluguel_imovel/anuncieTela/anuncie_Endere%C3%A7o.dart';
import 'package:aluguel_imovel/cadastrar.dart';
import 'package:aluguel_imovel/infoIm%C3%B3vel.dart';
import 'package:flutter/material.dart';
import 'conta.dart';
import 'main.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import './models/imovel.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Buscar",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: TelaBuscar(),
    );
  }
}

class TelaBuscar extends StatefulWidget {
  @override
  _TelaBuscarState createState() => _TelaBuscarState();
}

class _TelaBuscarState extends State<TelaBuscar> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  List<ImovelModel> imoveis = new List<ImovelModel>();

  _listarImoveis() {
    listarImoveis().then((response) {
      setState(() {
        Iterable r = convert.jsonDecode(response.body);
        imoveis = r.map((i) => ImovelModel.fromJson(i)).toList();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listarImoveis();
  }

  @override
  Widget build(BuildContext context) {
    final botaoInformacoes1 = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: RaisedButton(
          color: Colors.orange,
          child: Text("Mais Informações",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaInfo()),
            );
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ));

    final botaoInformacoes2 = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: RaisedButton(
          color: Colors.orange,
          child: Text("Mais Informações ",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaInfo()),
            );
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ));

    return Scaffold(
        appBar: AppBar(
          title: Text("Buscar"),
        ),
        drawer: Drawer(
          child: ListView(
            //Fixo
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
              child: imoveis.isEmpty
                  ? Text('Sem registros')
                  : ListView.builder(
                      itemCount: imoveis.length,
                      itemBuilder: (context, index) {
                        ImovelModel imovel = imoveis[index];
                        // return Card(
                        //   child: Image.network(imovel.urlImagem),
                        // );
                        return Text(imovel.endereco.endereco);
                      },
                    )
              // child: Column(
              //   children: <Widget>[
              //     SizedBox(
              //       height: 250.0,
              //       width: 500.0,
              //       child: Image.network("imovel", fit: BoxFit.cover),
              //     ),
              //     SizedBox(
              //         width: 600.0, child: const Card(child: Text('Endereço:'))),
              //     SizedBox(height: 10.0),
              //     botaoInformacoes1,
              //     SizedBox(
              //       height: 300.0,
              //       width: 500.0,
              //       child: Image.asset("imagens/casa1.png",
              //           fit: BoxFit
              //               .contain), // como executar a lista no inicio da tela, método no inicio da lista e
              //       // como fazer o foreach
              //     ),
              //     SizedBox(
              //         width: 600.0, child: const Card(child: Text('Endereço:'))),
              //     SizedBox(height: 10.0),
              //     botaoInformacoes2,
              //   ],
              //),
              ),
        ));
  }

  Future listarImoveis() async {
    var url = 'https://aluguel-api.herokuapp.com/api/Imovel/GetAll';
    // Await the http get response, then decode the json-formatted response.
    return await http.get(url);
  }
}
