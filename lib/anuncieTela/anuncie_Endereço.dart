import 'package:aluguel_imovel/conta.dart';
import 'package:flutter/material.dart';
import '../Buscar.dart';
import '../cadastrar.dart';
import '../main.dart';
import 'dadosEstruturais_Imovel.dart';

void main() => runApp(Myapp()); //Inica Aplicação

class Myapp extends StatelessWidget {
  // Sem Interação
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Imovel Endereço", //Titulo
      theme: ThemeData(
        // Config do tema
        primaryColor: Colors.blue,
      ),
      home: TelaAnuncieEnd(),
    );
  }
}

class TelaAnuncieEnd extends StatefulWidget {
  @override
  _TelaAnuncieEndState createState() => _TelaAnuncieEndState();
}

class _TelaAnuncieEndState extends State<TelaAnuncieEnd> {
  TextStyle style = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 20.0); // aplicado em todo texto da tela
  @override
  Widget build(BuildContext context) {
    // Declarar aqui todos os wiggets que vai usar na tela

    final ruaTexto = TextField(
        // Configuração do espaço de imput usuario
        obscureText: false, // não  oculta o  texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText: "Rua", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final numeroNum = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText: "numero", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final bairroTexto = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText: "Bairro", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final cidadeTexto = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText: "Cidade", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final estadoTexto = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText: "Estado", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final cepNum = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText: "CEP", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final botaoProximo = ButtonTheme(
        minWidth: MediaQuery.of(context)
            .size
            .width, // Definição largura minima(que vi ser do tamanho dos demais widgets)
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
            15.0), // insere espaços em volta do espaço de imput
        child: RaisedButton(
          // Define propriedades do botão
          color: Colors.orange, // cor botão
          //                    Texto do botão no centro     Estilo do texto do botão      Cor texto                  Negrito
          child: Text("Proximo",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaDadosEs()),
            );
          },
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(30.0)), // Arredondando bordas do botão
        ));

    final botaoVoltar = ButtonTheme(
        minWidth: MediaQuery.of(context)
            .size
            .width, // Definição largura minima(que vi ser do tamanho dos demais widgets)
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
            15.0), // insere espaços em volta do espaço de imput
        child: RaisedButton(
          // Define propriedades do botão
          color: Colors.white54, // cor botão
          //                    Texto do botão no centro     Estilo do texto do botão      Cor texto                  Negrito
          child: Text("Voltar",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaBuscar()),
            );
          },
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(30.0)), // Arredondando bordas do botão
        ));

    // Propriedades da tela
    return Scaffold(
        appBar: AppBar(
          title: Text("Anuncie"),
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
                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.house),
                title: Text("Anuncie"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaAnuncieEnd()),
                  ); //Navegar para outra página
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
          // Centraliza widgets
          child: Container(
            // local onde fica todos os widgets
            color: Colors.white, //  cor da tela
            padding: const EdgeInsets.all(
                40.0), // Espaçamento em todos os cantos da tela
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                  child: Image.asset("imagens/anuncioImovel.PNG",
                      fit: BoxFit.contain),
                ),
                // Endereço do Imovel

                SizedBox(height: 60.0),

                SizedBox(height: 30.0),
                ruaTexto,
                SizedBox(height: 30.0),
                numeroNum,
                SizedBox(height: 30.0),
                bairroTexto,
                SizedBox(height: 30.0),
                cidadeTexto,
                SizedBox(height: 30.0),
                estadoTexto,
                SizedBox(height: 30.0),
                cepNum,
                SizedBox(height: 30.0),

                SizedBox(height: 50.0),
                botaoProximo,
                SizedBox(height: 30.0),
                botaoVoltar
              ],
            ),
          ),
        ));
  }
}
