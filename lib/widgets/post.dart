import 'package:flutter/material.dart';

class Post extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Header(),
        Content(),
        Footer(),
        Info(),
      ],
    );
  }

  Widget Header(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          User(),
          More(),
        ],
      ),
    );
  }

  Widget User(){
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage("https://www.eluniverso.com/sites/default/files/styles/powgallery_1024/public/fotos/2020/11/ccqcffc.png?itok=6CQ5K2ma"),
            backgroundColor: Colors.transparent,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Text("User", style: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        ),),
      ],
    );
  }

  Widget More(){
    return Container(
      alignment: Alignment.centerRight,
      child: 
        IconButton(
          icon: Icon(Icons.more_horiz, color: Colors.black,), 
          onPressed: null),
    );
  }

  Widget Content(){
    return Container(
      width: double.infinity,
      child: Image.network(
        "https://librosostenibilidad.files.wordpress.com/2017/03/paisaje-cultura-sostenibilidad.jpg", 
        fit: BoxFit.cover,));
  }

  Widget Footer(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Buttons(),
        Save(),
      ],
    );
  }

  Widget Buttons(){
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.favorite_outline_sharp, color: Colors.black,), 
          onPressed: null),
        IconButton(
          icon: Icon(Icons.chat_bubble_outline_sharp, color: Colors.black,), 
          onPressed: null),
        IconButton(
          icon: Icon(Icons.send_sharp, color: Colors.black,), 
          onPressed: null),
      ],
    );
  }

  Widget Save(){
    return IconButton(
      icon: Icon(Icons.bookmark_border_sharp, color: Colors.black,), 
      onPressed: null,);
  }

  Widget Info(){
    return Row(
      children: [
        Text("202002 likes"),
      ],
    );
  }
}