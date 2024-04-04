import 'package:flutter/material.dart';
import 'package:flutter_som_variaspgs/principal.dart';
import 'imc.dart';
import 'contador.dart';
import 'usuario.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas nomeadas',
      initialRoute: '/',
      routes: {'/': (context) => const Principal (),
        '/primeira': (context) => const Imc (),
        '/segunda': (context) => const Contador (),
        '/terceira': (context) => const Usuarios ()
      },
    );
  }
}
