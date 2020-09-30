import 'package:flutter/material.dart';
import 'dart:io';
import 'images.dart';

class Screen extends StatefulWidget {
  String path;
  Screen({Key key,this.path}):super(key:key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {


  gridView(){
    return Padding(
      padding:EdgeInsets.all(5.0),
      child:GridView.count(
        crossAxisCount:3,
        mainAxisSpacing:3,
        crossAxisSpacing:3,
        children:images.img.map((photo){
          return Image.file(File(photo.photo_name),fit: BoxFit.cover,);
        }
        ).toList(),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Database Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: gridView(),
            )
          ],
        ),
      ),
    );
  }
}
