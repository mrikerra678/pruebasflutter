import 'package:flutter/cupertino.dart';
import 'package:Flutter/secondpages.dart';
import 'package:flutter/material.dart';

class Contenedor {
  int id;
  String clase;
  String profe;

  Contenedor(String clase, int id, String profe) {
    this.clase = clase;
    this.id = id;
    this.profe = profe;
  }
}

class Cosas extends StatefulWidget {
  const Cosas({Key key}) : super(key: key);

  Cosos createState() => Cosos();
}

class Cosos extends State<Cosas> {
  @override
  Widget build(BuildContext context) {
    Contenedor contenedor;

    for (int i = 0; i < 30; i++) {
      contenedor = new Contenedor("yhg", i, "ii");
    }

    var container = InkWell(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.orange),
            color: Colors.green,
            borderRadius: BorderRadius.circular(8)),
        child: GridView.count(
          shrinkWrap: true,
          primary: true,
          crossAxisCount: 1,
          children: [
            Column(
              children: [
                Text(contenedor.clase.toString()),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondPage(
                                contenedor: contenedor,
                              )),
                    );
                  },
                  child: Icon(Icons.add),
                ),
                Text(contenedor.profe.toString()),
              ],
            )
          ],
        ),
      ),
    );
    return container;
  }
}
