import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: _crearItemsCorto()
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
            ..add(Divider(
              color: Colors.green,
            ));
    } 

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((opt) {
        return Column(
          children: [
            ListTile(
              title: Text(opt),
              subtitle: Text(opt + ' subtítulo'),
              leading: Icon(Icons.ac_unit_rounded),
              trailing: Icon(Icons.access_time_rounded),
              onTap: (){
                print(opt);
              },
            ),
            Divider()
          ],
        );
    }).toList();
  }
}