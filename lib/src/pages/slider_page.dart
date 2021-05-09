import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorslider = 300.0;
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Text('Valor es: $_valorslider'),
            Text('El check es: $_check'),
            Expanded(child: _crearImagen())
          ],
        ) 
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _valorslider,
      min: 10.0,
      max: 400.0,
      onChanged: _check ? ( valor ){
        setState(() {
          _valorslider = valor;
        });
      }: null ,
      activeColor: Colors.indigo,
      label: 'Tamaño de la imagen',
      //divisions: 20,
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Strawhat_crew_jolly_roger.svg/1200px-Strawhat_crew_jolly_roger.svg.png'),
      width: _valorslider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: _check ? Text('Bloquear slider') : Text('Desbloquear slider'),
      value: _check, 
      onChanged: ( value ){
      setState(() {
        _check = value;
      });
    });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: _check ? Text('Bloquear slider') : Text('Desbloquear slider'),
      value: _check, 
      onChanged: ( value ){
      setState(() {
        _check = value;
      });
    });
  }
}