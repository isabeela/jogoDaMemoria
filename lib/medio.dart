import 'package:flutter/material.dart';
import 'package:jogo_da_memoria/dadosmedio/dadosmedio.dart';
import 'dadosmedio/dadosmedio.dart';

class Medio extends StatefulWidget {
  Medio();

  @override
  _Medio createState() => _Medio();
}

class _Medio extends State<Medio> {
  @override
  void initState() {
    super.initState();

    pairs = getPairs();
    pairs.shuffle();

    paresVisiveis = pairs;

    selecionado = true;

    // Aparecer alguns segundos para o usuário decorar a posição das cartas

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        paresVisiveis = getCode();
        selecionado = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nível Médio"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            children: <Widget>[
              Text(
                "$pontos/600",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text("Pontos"),
              SizedBox(
                height: 20,
              ),
              pontos != 600
                  ? GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          mainAxisSpacing: 0.0, maxCrossAxisExtent: 120),
                      children: List.generate(paresVisiveis.length, (index) {
                        return Peca(
                          imageAssetPath:
                              paresVisiveis[index].getImageAssetPath(),
                          parent: this,
                          pecaIndex: index,
                        );
                      }),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          "🎉",
                          style: TextStyle(fontSize: 60),
                        ),
                        AlertDialog(
                          title: Text("Fim de Jogo"),
                          content: Text("Parabéns, você venceu!"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(Icons.list),
                              iconSize: 40.0,
                              tooltip: 'Mudar de Nível',
                              color: Colors.pink,
                              onPressed: () {
                                Navigator.pushNamed(context, '/dificuldade');
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.exit_to_app),
                              iconSize: 40.0,
                              tooltip: 'Sair',
                              color: Colors.pink,
                              onPressed: () {
                                Navigator.pushNamed(context, '/');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
            ],
          ),
        ));
  }

  void refreshData() {}
}

class Peca extends StatefulWidget {
  String imageAssetPath;
  bool selecionado;
  _Medio parent;
  int pecaIndex;
  Peca({this.imageAssetPath, this.parent, this.pecaIndex});

  @override
  _StatePeca createState() => _StatePeca();
}

class _StatePeca extends State<Peca> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selecionado) {
          //seleciona as peças
          setState(() {
            pairs[widget.pecaIndex].setIsSelected(true);
          });

          //testa para ver se os pares são os mesmos
          //escolha correta
          if (selecionarImagem != "") {
            if (selecionarImagem ==
                pairs[widget.pecaIndex].getImageAssetPath()) {
              pontos = pontos + 100;
              setState(() {});
              selecionado = false;
              widget.parent.setState(() {
                pairs[widget.pecaIndex].getImageAssetPath();
                pairs[pecaIgualSelecionada].getImageAssetPath();
              });
              selecionarImagem = "";
            } else {
              //escolha errada
              Future.delayed(const Duration(seconds: 1), () {
                widget.parent.setState(() {
                  pairs[widget.pecaIndex].setIsSelected(false);
                  pairs[pecaIgualSelecionada].setIsSelected(false);
                });
                selecionarImagem = "";
              });
            }
          } else {
            pecaIgualSelecionada = widget.pecaIndex;
            selecionarImagem = pairs[widget.pecaIndex].getImageAssetPath();
          }
        }
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: paresVisiveis[widget.pecaIndex].getIsSelected()
            ? Image.asset("")
            : Image.asset(pairs[widget.pecaIndex].getIsSelected()
                ? pairs[widget.pecaIndex].getImageAssetPath()
                : widget.imageAssetPath),
      ),
    );
  }
}
