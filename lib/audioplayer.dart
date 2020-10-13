import 'package:flutter/material.dart';
import 'playlist.dart';
import 'album.dart';


class AudioPlayer extends StatefulWidget {
  @override
  _AudioPlayerState createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayer> with SingleTickerProviderStateMixin{

  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(

        child:Column(
          children:<Widget>[
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,

              child: Center(
                child: Container(
                  child:ClipRRect(
                    child: Image.asset("assets/p1.jpg",fit: BoxFit.cover,),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width/2.5,
                  decoration: BoxDecoration(
                    color:Colors.tealAccent,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow:[

                      BoxShadow(
                        color:Colors.black54,
                        blurRadius:5,
                        offset:Offset(4,4),
                        spreadRadius:1,
                      ),

                      BoxShadow(
                        color:Colors.black,
                        blurRadius:5,
                        offset:Offset(-4,-4),
                        spreadRadius: 1,
                      ),

                    ],
                  ),
                ),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height/10,
              child:TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.red,
                tabs: [
                  Tab(
                    icon: Icon(Icons.playlist_play),
                    child:Text("Playlist"),
                  ),
                  Tab(
                    icon: Icon(Icons.album),
                    child:Text("Album"),
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),


            Expanded(
              child:TabBarView(
                children:[
                  //Playlist(),
                  Album(),
                ],
                controller: _tabController,
              ),
            ),

          ],
        ),
       ),
     );
   }
}


