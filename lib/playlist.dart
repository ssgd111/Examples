import 'package:flutter/material.dart';
import 'fullscreenmusic.dart';

class Playlist extends StatefulWidget {
  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
          children:<Widget>[

            Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/40,left:MediaQuery.of(context).size.width/40,),
              child:Container(
                height:50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                  //|    color: Colors.tealAccent,
                      width:250,
                      child: Text("Ek Aashra he tera.mp3",style: TextStyle(fontSize:15),),
                    ),

                      Row(
                          children:[

                            GestureDetector(
                              child:Container(
                                width: 35,
                                height: 35,
                                child:Center(
                                    child: Icon(Icons.play_arrow_rounded)
                                ),

                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white10,
                                        offset: Offset(3.0, 3.0),
                                        blurRadius: 10.0,
                                        spreadRadius: 3.0),
                                    BoxShadow(
                                      color: Colors.white,
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
                              onTap:(){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>FullScreen()));
                              },
                            ),

                          SizedBox(width:5,),

                            Container(
                              width: 35,
                              height: 35,
                              child:Center(
                                  child: Icon(Icons.download_sharp)
                              ),

                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white10,
                                      offset: Offset(3.0, 3.0),
                                      blurRadius: 10.0,
                                      spreadRadius: 3.0),
                                  BoxShadow(
                                    color: Colors.white,
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


                        ],
                      ),
                   ],
                ),
                decoration:BoxDecoration(
                   color:Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.white70,
                      offset: Offset(10.0,10.0),
                      blurRadius: 5.0,
                      spreadRadius: 3.0,),

                    BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-10.0,-10.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                    )
                  ],

                ),
              ),
            ),


            SizedBox(
              height: 30,
            ),


            Padding(
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/40,left:MediaQuery.of(context).size.width/40,),
              child:Container(
                height:50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      //|    color: Colors.tealAccent,
                      width:250,
                      child: Text("Ek Aashra he tera.mp3",style: TextStyle(fontSize:15),),
                    ),

                    Row(
                      children:[

                        GestureDetector(
                          child:Container(
                            width: 35,
                            height: 35,
                            child:Center(
                                child: Icon(Icons.play_arrow_rounded)
                            ),

                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white10,
                                    offset: Offset(3.0, 3.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0),
                                BoxShadow(
                                  color: Colors.white,
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
                          onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>FullScreen()));
                          },
                        ),

                        SizedBox(width:5,),

                        Container(
                          width: 35,
                          height: 35,
                          child:Center(
                              child: Icon(Icons.download_sharp)
                          ),

                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white10,
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0),
                              BoxShadow(
                                color: Colors.white,
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


                      ],
                    ),
                  ],
                ),
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.white70,
                      offset: Offset(10.0,10.0),
                      blurRadius: 5.0,
                      spreadRadius: 3.0,),

                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-10.0,-10.0),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    )
                  ],

                ),
              ),
            ),

            SizedBox(height: 30,),

            Padding(
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/40,left:MediaQuery.of(context).size.width/40,),
              child:Container(
                height:50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      //|    color: Colors.tealAccent,
                      width:250,
                      child: Text("Ek Aashra he tera.mp3",style: TextStyle(fontSize:15),),
                    ),

                    Row(
                      children:[

                        GestureDetector(
                          child:Container(
                            width: 35,
                            height: 35,
                            child:Center(
                                child: Icon(Icons.play_arrow_rounded)
                            ),

                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white10,
                                    offset: Offset(3.0, 3.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0),
                                BoxShadow(
                                  color: Colors.white,
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
                          onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>FullScreen()));
                          },
                        ),

                        SizedBox(width:5,),

                        Container(
                          width: 35,
                          height: 35,
                          child:Center(
                              child: Icon(Icons.download_sharp)
                          ),

                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white10,
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0),
                              BoxShadow(
                                color: Colors.white,
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


                      ],
                    ),
                  ],
                ),
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.white70,
                      offset: Offset(10.0,10.0),
                      blurRadius: 5.0,
                      spreadRadius: 3.0,),

                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-10.0,-10.0),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    )
                  ],

                ),
              ),
            ),

            SizedBox(height: 30,),


            Padding(
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/40,left:MediaQuery.of(context).size.width/40,),
              child:Container(
                height:50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      //|    color: Colors.tealAccent,
                      width:250,
                      child: Text("Ek Aashra he tera.mp3",style: TextStyle(fontSize:15),),
                    ),

                    Row(
                      children:[

                        GestureDetector(
                          child:Container(
                            width: 35,
                            height: 35,
                            child:Center(
                                child: Icon(Icons.play_arrow_rounded)
                            ),

                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white10,
                                    offset: Offset(3.0, 3.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0),
                                BoxShadow(
                                  color: Colors.white,
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
                          onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>FullScreen()));
                          },
                        ),

                        SizedBox(width:5,),

                        Container(
                          width: 35,
                          height: 35,
                          child:Center(
                              child: Icon(Icons.download_sharp)
                          ),

                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white10,
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0),
                              BoxShadow(
                                color: Colors.white,
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


                      ],
                    ),
                  ],
                ),
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.white70,
                      offset: Offset(10.0,10.0),
                      blurRadius: 5.0,
                      spreadRadius: 3.0,),

                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-10.0,-10.0),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    )
                  ],

                ),
              ),
            ),

            SizedBox(height: 30,),


            Padding(
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/40,left:MediaQuery.of(context).size.width/40,),
              child:Container(
                height:50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      //|    color: Colors.tealAccent,
                      width:250,
                      child: Text("Ek Aashra he tera.mp3",style: TextStyle(fontSize:15),),
                    ),

                    Row(
                      children:[

                        GestureDetector(
                          child:Container(
                            width: 35,
                            height: 35,
                            child:Center(
                                child: Icon(Icons.play_arrow_rounded)
                            ),

                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white10,
                                    offset: Offset(3.0, 3.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0),
                                BoxShadow(
                                  color: Colors.white,
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
                          onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>FullScreen()));
                          },
                        ),

                        SizedBox(width:5,),

                        Container(
                          width: 35,
                          height: 35,
                          child:Center(
                              child: Icon(Icons.download_sharp)
                          ),

                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white10,
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0),
                              BoxShadow(
                                color: Colors.white,
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


                      ],
                    ),
                  ],
                ),
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.white70,
                      offset: Offset(10.0,10.0),
                      blurRadius: 5.0,
                      spreadRadius: 3.0,),

                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-10.0,-10.0),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    )
                  ],

                ),
              ),
            ),


            SizedBox(height: 30,),

            Padding(
              padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/40,left:MediaQuery.of(context).size.width/40,),
              child:Container(
                height:50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      //|    color: Colors.tealAccent,
                      width:250,
                      child: Text("Ek Aashra he tera.mp3",style: TextStyle(fontSize:15),),
                    ),

                    Row(
                      children:[

                        GestureDetector(
                          child:Container(
                            width: 35,
                            height: 35,
                            child:Center(
                                child: Icon(Icons.play_arrow_rounded)
                            ),

                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white10,
                                    offset: Offset(3.0, 3.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0),
                                BoxShadow(
                                  color: Colors.white,
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
                          onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>FullScreen()));
                          },
                        ),

                        SizedBox(width:5,),

                        Container(
                          width: 35,
                          height: 35,
                          child:Center(
                              child: Icon(Icons.download_sharp)
                          ),

                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white10,
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0),
                              BoxShadow(
                                color: Colors.white,
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


                      ],
                    ),
                  ],
                ),
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.white70,
                      offset: Offset(10.0,10.0),
                      blurRadius: 5.0,
                      spreadRadius: 3.0,),

                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(-10.0,-10.0),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    )
                  ],

                ),
              ),
            ),


          ],
        ),
    );
  }
}
