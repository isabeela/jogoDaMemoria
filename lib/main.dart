import 'package:flutter/material.dart';
import 'dificil.dart';
import 'facil.dart';
import 'medio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo da Memória',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new MyHomePage(title: "Jogo da memória"),
        '/dificuldade': (BuildContext context) => new Dificuldades(),
        '/facil': (BuildContext context) => new Facil(),
        '/medio': (BuildContext context) => new Medio(),
        '/dificil': (BuildContext context) => new Dificil(),
      },
      initialRoute: '/',
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _escolhaDificuldade() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Padding(
          padding: EdgeInsets.only(top: 25, bottom: 0),
          child: Image.asset(
            "imagens/intro.png",
            height: 450,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 15,
          ),
        ),
        Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              child: Text('JOGAR'),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.pink)),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Dificuldades()));
              },
            )),
      ]),
    );
  }
}

// PÁGINA SELEÇÃO DE NÍVEIS DE DIFICULDADE

class Dificuldades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Selecione o nível de dificuldade"),
          backgroundColor: Colors.pink,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Center(
                child: Text(
                  'Selecione o nível de dificuldade',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.pink,
                    fontWeight: FontWeight.w200,
                    fontFamily: "Arial",
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 60),
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        child: Text('Fácil'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          textStyle: TextStyle(fontSize: 20),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.pink)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/facil');
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        child: Text('Médio'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          textStyle: TextStyle(fontSize: 20),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.pink)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/medio');
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          child: Text('Difícil'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink,
                            textStyle: TextStyle(fontSize: 20),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.pink)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/dificil');
                          })),
                ],
              ),
            ],
          ),
        ));
  }
}
