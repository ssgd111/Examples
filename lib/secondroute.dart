import 'dart:io';
//import 'package:photo_view/photo_view.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  File image;
  String key1;
  SecondRoute({Key key,this.image,this.key1}):super(key:key);
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        color: Colors.red,
        child: Hero(
          tag:widget.key1,
          child:Image.file(
              widget.image,
              fit:BoxFit.cover,
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height,
            ),
          ),
        ),
      );
    }
}
/*body: PhotoView(
          imageProvider:FileImage(widget.image,scale: 1.0),
        minScale: PhotoViewComputedScale.contained*0.8,
        maxScale: PhotoViewComputedScale.covered*2,
),*/

