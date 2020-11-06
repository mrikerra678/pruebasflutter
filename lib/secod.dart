import 'package:Flutter/contenedor.dart';

import 'package:flutter/material.dart';

class SecondPages extends StatefulWidget {
  SecondPages({Key key}) : super(key: key);

  @override
  _SecondPagesState createState() => _SecondPagesState();
  
}


class _SecondPagesState extends State<SecondPages> {
  @override
  Widget build(BuildContext context) {
    rvar _textController = TextEditingController(); 
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Constructor — second page"),
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
                height: 54.0,
                padding: EdgeInsets.all(12.0),
                child: Text("Data passed to this page:",
                    style: TextStyle(fontWeight: FontWeight.w700))),
            TextFormField(
              controller: _textController,
              onChanged: (value) {
                cambiarDatos(contenedor, value);
              },
            ),
            Text("Text: ${contenedor.clase}"),
            Text("Counter: ${contenedor.profe}"),
            RaisedButton(
                child: Text("Back"),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        ),
      ),
    );
  }

  void cambiarDatos(Contenedor contenedor, String value) {
    setState(() {
      contenedor.clase = value;
    });
  }
  }
}
