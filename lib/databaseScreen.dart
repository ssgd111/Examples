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
        crossAxisCount:2,
        mainAxisSpacing:5,
        crossAxisSpacing:5,
        children:images.img.map((photo){
          return Container(
            decoration:BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            child:ClipRRect(
              borderRadius:BorderRadius.all(Radius.circular(15.0)),
              child:GestureDetector(
                onLongPress: (){
                },
                child: Image.file(File(photo.photo_name),fit: BoxFit.cover,
              ),
              ),
            ),
          );
        }
        ).toList(),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
