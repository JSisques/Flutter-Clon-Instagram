import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  //Cogemos los datos de la anterior pantalla
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (context) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
      ),
    );
  }
}