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
        ItemTransferencia(Transferencia(400.0, 2)),
        ItemTransferencia(Transferencia(400.0, 2)),
        ItemTransferencia(Transferencia(400.0, 2)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(_transferencia.valor.toString()),
      subtitle: Text(_transferencia.numeroconta.toString()),
    ));
  }
}

class Transferencia {
  final double valor;
  final int numeroconta;

  Transferencia(this.valor, this.numeroconta);
}
