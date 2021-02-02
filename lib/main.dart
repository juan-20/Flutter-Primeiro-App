import 'package:flutter/material.dart';

void main() => runApp(
      Column(
        children: <Widget>[
          Text(
            'Deliver features faster',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'Hello mundo :)',
            textDirection: TextDirection.ltr,
          ),
          Column(
            children: <Widget>[
              Text(
                'oi',
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain, // otherwise the logo will be tiny
              child: const FlutterLogo(),
            ), //fittedBox
          ),
        ], //<Widget>[]
      ), //Column
    );
