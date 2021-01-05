import 'package:aluguel_imovel/anuncieTela/anuncie_Endere%C3%A7o.dart';
import 'package:aluguel_imovel/conta.dart';
import 'package:flutter/material.dart';
import '../Buscar.dart';
import '../cadastrar.dart';
import '../main.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dados Estruturais",
      theme: ThemeData(
        // Config do tema
        primaryColor: Colors.blue,
      ),
      home: TelaDadosEs(),
    );
  }
}

class TelaDadosEs extends StatefulWidget {
  @override
  _TelaDadosEsState createState() => _TelaDadosEsState();
}

class _TelaDadosEsState extends State<TelaDadosEs> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final areaImNum = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText:
                "Área do Imóvel", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final areaTeNum = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText:
                "Área do Terreno", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final salaNum = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText:
                "Quantidade de Salas", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final cozinhaNum = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText:
                "Quantidade de Cozinhas", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final quartosNum = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText:
                "Quantidade de Quartos", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final banheiroNum = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText:
                "Quantidade de Banheiros", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final andarNum = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText:
                "Quantidade de Andares", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final garagemNum = TextField(
        // Configuração do espaço de imput senha
        obscureText: false, // Oculta o texto
        style:
            style, // usa o text style aplicado em todo texto declarado acima.
        decoration: InputDecoration(
            // decora o spaço de imput
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
                15.0), // insere espaços em volta do espaço de imput
            hintText:
                "Quantidade de Garagens", // Texto que vai aparecer no espaço de imput
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    32.0)) //Arredonda as bordas do espaço de imput
            ));

    final botaoConcluir = ButtonTheme(
        minWidth: MediaQuery.of(context)
            .size
            .width, // Definição largura minima(que vi ser do tamanho dos demais widgets)
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,
            15.0), // insere espaços em volta do espaço de imput
        child: RaisedButton(
          // Define propriedades do botão
          color: Colors.orange, // cor botão
          //                    Texto do botão no centro     Estilo do texto do botão      Cor texto                  Negrito
          child: Text("Concluir",
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
              MaterialPageRoute(builder: (context) => TelaAnuncieEnd()),
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
                  child: Image.asset("imagens/dadosEstImoveis.PNG",
                      fit: BoxFit.contain),
                ),

                //Dados  do Imovel
                SizedBox(height: 60.0),

                areaImNum,
                SizedBox(height: 30.0),
                areaTeNum,
                SizedBox(height: 30.0),
                salaNum,
                SizedBox(height: 30.0),
                cozinhaNum,
                SizedBox(height: 30.0),
                quartosNum,
                SizedBox(height: 30.0),
                banheiroNum,
                SizedBox(height: 30.0),
                andarNum,
                SizedBox(height: 30.0),
                garagemNum,
                SizedBox(height: 30.0),

                // botão

                SizedBox(height: 50.0),
                botaoConcluir,
                SizedBox(height: 30.0),
                botaoVoltar
              ],
            ),
          ),
        ));
  }
}
