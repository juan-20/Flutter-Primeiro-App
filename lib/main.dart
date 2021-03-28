import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
          // barra
          appBar: AppBar(
            title: Text('Tranferencias'),
          ),
          // botão voador
          floatingActionButton: FloatingActionButton(
            // icone
            child: Icon(Icons.add),
          ),

          // parte branca do corpo
          body: Column(
            children: <Widget>[
              Card(
                  child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('100 reais'),
                subtitle: Text('Conta 123'),
              )),
              Card(
                  child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('2000 reais'),
                subtitle: Text('Conta 1223'),
              )),
            ],
          )),
    ));
