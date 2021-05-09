import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/provider/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    //print(menuProvider.opciones);
    //menuProvider.cargarData().then((opciones) => {});

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snap){
        return ListView(
          children: _listaItems(snap.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, context) {

    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_right, color: Colors.green,),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
  }
}