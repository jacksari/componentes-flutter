import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text('Avatar page'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://jacksari.com//static/266ee780b41868d4779fe133c92e784b/69585/hero-image.png'),
              radius: 21,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JS'),
              radius: 21,
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
                'https://i.pinimg.com/originals/dc/2d/14/dc2d14bf8591b7ebe65203b02d0a4d45.jpg'
            ),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 500,
            fit: BoxFit.cover,
          ),
      ),
    );
  }
}