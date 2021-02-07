import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  BuildContext context;

  //Cogemos los datos de la anterior pantalla
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (context) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }

Widget CustomAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.camera_alt_outlined,),
          onPressed: null,
        ),
        title: Text("Instagram", style: TextStyle(
          color: Colors.black,
        ),),
        actions: [
          IconButton(
            icon: Icon(Icons.tv),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: null,
          ),
        ],
    );
  }
}