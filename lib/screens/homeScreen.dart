import 'package:clon_instagram/widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

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
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: ListView(
        children: <Widget>[
          Post(),
          Post(),
        ],
      ),
    );
  }

Widget CustomAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.camera_alt_outlined, color: Colors.black,),
          onPressed: null,
        ),
        title: Text("Instagram", style: TextStyle(
          color: Colors.black,
          fontFamily: "Billabong",
          fontSize: 32,
        ),),
        actions: [
          IconButton(
            icon: Icon(Icons.tv, color: Colors.black,),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.message, color: Colors.black,),
            onPressed: null,
          ),
        ],
    );
  }

Widget CustomBottomNavigationBar(){
  return BottomNavigationBar (
    currentIndex: 3,
    unselectedItemColor: Colors.black,
    //selectedItemColor: Colors.black,
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
        label: "Home",
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: "Buscar",
        icon: Icon(Icons.search,),
      ),
      BottomNavigationBarItem(
        label: "Añadir",
        icon: Icon(Icons.add),
      ),
      BottomNavigationBarItem(
        label: "Likes",
        icon: Icon(Icons.favorite_outline_sharp),
      ),
      BottomNavigationBarItem(
        label: "Perfil",
        icon: Icon(Icons.person),
      ),
    ],
  );
}

}