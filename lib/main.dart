import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          // barra
          appBar: AppBar(
            title: Text('Tranferencias'),
          ),
          // botão voador
          floatingActionButton: FloatingActionButton(
            // icone
            onPressed: () {},
            child: Icon(Icons.add),
          ),

          // parte branca do corpo
          body: ListaTranferencias(),
        ),
      ),
    );

// retorna um front padrão
class ListaTranferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ItemTransferencia('400', 'conta 2'),
        ItemTransferencia('600', 'conta 4'),
        ItemTransferencia('800', 'conta 7'),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final String valor;
  final String numeroconta;

  ItemTransferencia(this.valor, this.numeroconta);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(valor),
      subtitle: Text(numeroconta),
    ));
  }
}
