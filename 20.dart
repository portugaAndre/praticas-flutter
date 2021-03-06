import 'package:flutter/material.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int indice = 0;
  static const TextStyle estiloParaTexto =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> telas = <Widget>[
    Text(
      'Índice 0: Cursos',
      style: estiloParaTexto,
    ),
    Text(
      'Índice 1: Consultoria',
      style: estiloParaTexto,
    ),
    Text(
      'Índice 3: Avaliação',
      style: estiloParaTexto,
    ),
  ];
  void selecionar(int indice) {
    setState(() => this.indice = indice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: telas.elementAt(this.indice),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Cursos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Consultoria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning_rounded),
            label: 'Avaliação',
          ),
        ],
        currentIndex: this.indice,
        selectedItemColor: Colors.amber[800],
        onTap: selecionar,
      ),
    );
  }
}
