import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(const Produtos());
}

class Produtos extends StatelessWidget {
  const Produtos({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  TextEditingController nomeController = new TextEditingController();
  TextEditingController descricaoController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar_Tela(){
    nomeController.text = "";
    descricaoController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }

  void _cadastrar_nome(){
    nomeController.text = "";
    descricaoController.text = "";
    setState(() {
      _textoInfo = "Cadastrado com sucesso";
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Cadastro de Produtos'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        actions: <Widget>[
          IconButton(
              onPressed: _limpar_Tela,
              icon: Icon(Icons.refresh)
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 128.0,
              color: Colors.black,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Usuário",
                  labelStyle: TextStyle(color: Colors.black)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: nomeController,
            ),
            //Segundo Imput para a descricao
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Descricao",
                  labelStyle: TextStyle(color: Colors.black)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: descricaoController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: _cadastrar_nome,
                    child: const Text ("Cadastrar Usuário")
                ),
              ),
            ),
            //Botão para executar o calculo do IMC,

            Text(
                _textoInfo,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0
                )
            ),
          ],
        ),
      ),
    );
  }
}


