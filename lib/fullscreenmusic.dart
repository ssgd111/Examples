import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:test1/playlist.dart';

class FullScreen extends StatefulWidget {
  @override
  _FullScreenState createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {

  Duration _duration = Duration();
  Duration _position = Duration();
  AudioPlayer audioPlayer;
  AudioCache audioCache;
  bool isplay = false;

  var a;
  var b;
  String ab = "Play";

  void initState(){
    super.initState();
    initPlayer();
  }




  void initPlayer() {
    audioPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: audioPlayer);

    audioPlayer.durationHandler = (d) => setState(() {
      _duration = d;
    });

    audioPlayer.positionHandler = (p) => setState(() {
      _position = p;
    });
  }

  void seekToSecond(int second){
    Duration newDuration = Duration(seconds: second);
    audioPlayer.seek(newDuration);
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        children:[
          SizedBox(height:50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[

              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                  audioPlayer.pause();
                },
                child: Container(
                  width: 50,
                  height: 50,
                  child:Center(
                      child: Icon(Icons.arrow_back)
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlueAccent,
                          offset: Offset(3.0, 3.0),
                          blurRadius: 10.0,
                          spreadRadius: 3.0),
                      BoxShadow(
                        color: Colors.amber,
                        offset: Offset(-3.0,-3.0),
                        blurRadius: 10.0,
                        spreadRadius: 3.0,
                      ),
                    ],
                    gradient: LinearGradient(
                        begin:Alignment.topLeft,
                        end:Alignment.bottomRight,
                        colors:[
                          Colors.grey[200],
                          Colors.grey[300],
                          Colors.grey[400],
                          Colors.grey[500],
                        ],
                        stops:[
                          0.1,
                          0.5,
                          0.8,
                          1
                        ]
                    ),
                  ),
                ),
              ),


              Text("Playing Now",style: TextStyle(fontSize: 22),),

              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Playlist()));
                },
                child:Container(
                  width: 50,
                  height: 50,
                  child:Center(
                      child: Icon(Icons.menu)
                  ),

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlueAccent,
                          offset: Offset(3.0, 3.0),
                          blurRadius: 10.0,
                          spreadRadius: 3.0),
                      BoxShadow(
                        color: Colors.amber,
                        offset: Offset(-3.0,-3.0),
                        blurRadius: 10.0,
                        spreadRadius: 3.0,
                      ),

                    ],
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors:[
                          Colors.grey[200],
                          Colors.grey[300],
                          Colors.grey[400],
                          Colors.grey[500],
                        ],

                        stops:[
                          0.1,
                          0.5,
                          0.8,
                          1
                        ]

                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Container(
            width: 200,
            height: 200,
            child:ClipRRect(
              child: Image.asset("assets/p1.jpg",fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(200),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(100),
              boxShadow:[
                BoxShadow(
                    color: Colors.lightBlueAccent,
                    offset: Offset(3.0, 3.0),
                    blurRadius: 10.0,
                    spreadRadius: 3.0
                ),
                BoxShadow(
                  color: Colors.amber,
                  offset: Offset(-3.0,-3.0),
                  blurRadius: 10.0,
                  spreadRadius: 3.0,
                ),
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors:[
                    Colors.grey[200],
                    Colors.grey[300],
                    Colors.grey[400],
                    Colors.grey[500],
                  ],
                  stops:[
                    0.1,
                    0.5,
                    0.8,
                    1
                  ]
              ),
            ),
          ),
          SizedBox(height: 50,),
          Center(
            child: Text("Ek Aashra he tera.mp3",style:TextStyle(fontSize: 30,fontFamily: 'Tinos'),),
          ),
          SizedBox(
            height: 50,
          ),
          Slider(
                activeColor: Colors.amber,
                inactiveColor: Colors.lightBlueAccent,
                value: a = _position.inSeconds.toDouble(),
                min:  0.0,
                max: b = _duration.inSeconds.toDouble(),
                semanticFormatterCallback:  (double newValue){
                  return '${newValue.round()}';
                },
                onChanged:(double value){
                  setState((){
                    seekToSecond(value.toInt());
                    value = value;
                    }
                  );
                }
             ),
            Padding(
              padding: EdgeInsets.only(left:25,right: 25),
              child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$a"),
                Text("$b"),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              GestureDetector(
                onTap: (){
                  setState(() {
                    // ignore: unnecessary_statements
                    var c = _position.inSeconds.toDouble() - 2.0;
                     seekToSecond(c.toInt());
                   }
                  );
                },
                child:Container(
                  width: 70,
                  height: 70,
                  child:ClipRRect(
                    child: Icon(Icons.arrow_left_sharp),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow:[
                      BoxShadow(
                          color: Colors.lightBlueAccent,
                          offset: Offset(3.0, 3.0),
                          blurRadius: 10.0,
                          spreadRadius: 3.0
                      ),
                      BoxShadow(
                        color: Colors.amber,
                        offset: Offset(-3.0,-3.0),
                        blurRadius: 10.0,
                        spreadRadius: 3.0,
                      ),
                    ],
                    gradient:LinearGradient(
                        begin:Alignment.topLeft,
                        end:Alignment.bottomRight,
                        colors:[
                          Colors.grey[200],
                          Colors.grey[300],
                          Colors.grey[400],
                          Colors.grey[500],
                        ],
                        stops:[
                          0.1,
                          0.5,
                          0.8,
                          1
                        ]
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  if(isplay == false){
                    audioCache.play("15.mp3");
                    setState(() {
                      isplay =true;
                      ab = "Pause";
                    }
                    );
                  }
                  else{
                    audioPlayer.pause();
                    setState(() {
                         isplay = false;
                         ab = "Play";
                      }
                    );
                  }
                },
                child:Container(
                  width: 70,
                  height: 70,
                  child:ClipRRect(
                    child: (isplay == true)?Icon(Icons.pause):Icon(Icons.play_arrow_rounded),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow:[
                      BoxShadow(
                          color: Colors.lightBlueAccent,
                          offset: Offset(3.0, 3.0),
                          blurRadius: 10.0,
                          spreadRadius: 3.0
                        ),
                      BoxShadow(
                        color: Colors.amber,
                        offset: Offset(-3.0,-3.0),
                        blurRadius: 10.0,
                        spreadRadius: 3.0,
                      ),
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors:[
                          Colors.grey[200],
                          Colors.grey[300],
                          Colors.grey[400],
                          Colors.grey[500],
                        ],
                        stops:[
                          0.1,
                          0.5,
                          0.8,
                          1
                        ]
                    ),
                  ),
                ),
              ),
            GestureDetector(
              onTap:(){
                setState((){
                  //ignore: unnecessary_statements
                  var d = _position.inSeconds.toDouble() + 2.0;
                  seekToSecond(d.toInt());
                  }
                );
              },
              child:Container(
                width: 70,
                height: 70,
                child:ClipRRect(
                  child: Icon(Icons.arrow_right),
                  borderRadius: BorderRadius.circular(100),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow:[
                    BoxShadow(
                        color: Colors.lightBlueAccent,
                        offset: Offset(3.0, 3.0),
                        blurRadius: 10.0,
                        spreadRadius: 3.0
                    ),
                    BoxShadow(
                      color: Colors.amber,
                      offset:Offset(-3.0,-3.0),
                      blurRadius: 10.0,
                      spreadRadius: 3.0,
                    ),
                  ],
                  gradient:LinearGradient(
                      begin:Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors:[
                        Colors.grey[200],
                        Colors.grey[300],
                        Colors.grey[400],
                        Colors.grey[500],
                      ],
                      stops:[
                        0.1,
                        0.5,
                        0.8,
                        1
                      ]
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
