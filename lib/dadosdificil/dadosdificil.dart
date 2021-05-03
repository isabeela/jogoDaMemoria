import 'package:jogo_da_memoria/dados/peca_dados.dart';

//Pontuação

int pontos = 0;
bool selecionado = false;
String selecionarImagem = "";
int pecaIgualSelecionada;

// ignore: deprecated_member_use
List<ItemPeca> paresVisiveis = new List<ItemPeca>();

// ignore: deprecated_member_use
List<ItemPeca> pairs = new List<ItemPeca>();

// Lista para adicionar as Imagens

List<ItemPeca> getPairs() {
  // ignore: deprecated_member_use
  List<ItemPeca> pairs = new List<ItemPeca>();

  ItemPeca itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/fluttermemoria.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/csharpmemoria.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/haskellmemoria.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/javamemoria.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/phpmemoria.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/pythonmemoria.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/kotlinmemoria.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/jsmemoria.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/swiftmemoria.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  return pairs;
}

// Lista para adicionar a imagem antes de virar
List<ItemPeca> getCode() {
  // ignore: deprecated_member_use
  List<ItemPeca> pairs = new List<ItemPeca>();

  ItemPeca itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/code.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/code.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/code.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/code.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/code.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/code.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/code.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/code.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  itemPeca = new ItemPeca();

  itemPeca.setImageAssetPath('imagens/code.png');
  itemPeca.setIsSelected(false);
  pairs.add(itemPeca);
  pairs.add(itemPeca);

  return pairs;
}
