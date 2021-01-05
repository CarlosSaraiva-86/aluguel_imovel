import 'package:aluguel_imovel/conta.dart';
import 'package:flutter/material.dart';
import 'anuncieTela/anuncie_Endereço.dart';
import 'buscar.dart';
import 'main.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import './models/imovel.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cadastro",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: TelaCadastrar(),
    );
  }
}

class TelaCadastrar extends StatefulWidget {
  @override
  _TelaCadastrarState createState() => _TelaCadastrarState();
}

class _TelaCadastrarState extends State<TelaCadastrar> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final usuarioTexto = TextField(
        obscureText: false,
        style: style,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Usuario",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final senhaTexto = TextField(
        obscureText: true,
        style: style,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Senha",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    final botaoCadastrar = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: RaisedButton(
          color: Colors.orange,
          child: Text("Cadastrar",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaBuscar()),
            );
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ));

    final botaoCancelar = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: RaisedButton(
          color: Colors.white54,
          child: Text("Cancelar",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaBuscar()),
            );
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ));

    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro"),
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
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                  child:
                      Image.asset("imagens/Cad_Prop.png", fit: BoxFit.contain),
                ),
                SizedBox(height: 80.0),
                usuarioTexto,
                SizedBox(height: 30.0),
                senhaTexto,
                SizedBox(height: 80.0),
                botaoCadastrar,
                SizedBox(height: 30.0),
                botaoCancelar
              ],
            ),
          ),
        ));
  }

  cadastrarImovel(ImovelModel model) async {
    var url = 'https://aluguel-api.herokuapp.com/api/Imovel/Set';

    // Await the http get response, then decode the json-formatted response.
    var response = await http.post(url, body: model);
    if (response.statusCode == 200) {}
  }
}
