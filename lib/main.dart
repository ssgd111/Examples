//import 'dart:convert';
import 'package:flutter/material.dart';
import 'audioplayer.dart';
/*import 'package:image_downloader/image_downloader.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:async';
//import 'package:wallpaper_manager/wallpaper_manager.dart';
import 'package:flutter/services.dart';
//import 'dart:core';
//import 'package:image_picker_saver/image_picker_saver.dart';
import 'package:http/http.dart' as http;
//import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:path_provider/path_provider.dart';
//import 'dart:io' show Platform;
//import 'package:social_share/social_share.dart';
//import 'package:file_picker/file_picker.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//import 'package:barcode_scan/barcode_scan.dart';
//import 'package:permission_handler/permission_handler.dart';
import 'package:dio/dio.dart';
import 'package:test1/Databasefile.dart';
import 'package:test1/databaseScreen.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:file_utils/file_utils.dart';
import 'dart:math';
import 'package:test1/secondroute.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:io';
//import 'package:connectivity/connectivity.dart';
import 'Photo.dart';
import 'Databasefile.dart';
import 'images.dart';
import 'griditem.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';*/
//import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/audio_cache.dart';


void main() {
  runApp(MyApp());
}

enum ClrVal { white, black }

bool LongPress = false;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp2(),
    );
  }
}

class MyApp2 extends StatefulWidget{

   bool selected;
   MyApp2({Key key,this.selected});

//  MyApp2({Key key,this.filepath}):super(key:key);
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {

  /*DateTime Pickeddate;
  TimeOfDay time;

  void initState() {
    super.initState();
    Pickeddate = DateTime.now();
    time = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date and time Picker"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "Date : ${Pickeddate.year},${Pickeddate.month},${Pickeddate.day}",
                ),
                onPressed: _pickDate,
              ),
              RaisedButton(
                child: Text("Time : ${time.hour},${time.minute}"),
                onPressed: _pickTime,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _pickDate() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: Pickeddate,
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime(DateTime.now().year + 100),
    );

    if (date != null){
      setState(() {
        Pickeddate = date;
      });
    }
  }

  _pickTime() async {
    TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: time,
    );
    if (newTime != null) {
      setState(() {
        time = newTime;
      });
    }
  }*/ //Date And time Picker in flutter

  /*FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

   Future onSelectNotification(String payload)async{
     showDialog(
         context:context,
         builder: (BuildContext context){
           return AlertDialog(
             title: Text("Work Complete"),
             content: Text("Maja AAvi"),
           );
         }
     );
   }


  @override
  void initState() {
    super.initState();

    var initializationSettingsAndroid = AndroidInitializationSettings("@mipmap/ic_launcher");

    var initializationSettingsIOs = IOSInitializationSettings();

    var initSetttings = InitializationSettings(
        initializationSettingsAndroid,
        initializationSettingsIOs
    );

    flutterLocalNotificationsPlugin.initialize(
        initSetttings,
        onSelectNotification: onSelectNotification,
    );
  }



   Future<void> _showBigPictureNotification() async {

     var largeIconPath = await _downloadAndSaveFile(
         "https://members.shreebrahamanandvidhyalaya.in/mobapi.ssgd.org/ssgd-daily-darshan/uploads/Darshan/2020/08/29/34d1aca4-f9bf-47b5-8052-4f878f37637f-photo_2020-08-29_08-37-06(2).jpg", 'largeIcon');

     var bigPicturePath = await _downloadAndSaveFile(
         "https://members.shreebrahamanandvidhyalaya.in/mobapi.ssgd.org/ssgd-daily-darshan/uploads/Darshan/2020/08/29/86b6483d-9b8d-4712-b93b-5d19d37f2711-photo_2020-08-29_08-37-06.jpg", 'bigPicture');

     var bigPictureStyleInformation = BigPictureStyleInformation(
         FilePathAndroidBitmap(bigPicturePath),
         largeIcon: FilePathAndroidBitmap(largeIconPath),
         contentTitle: "Shree Swaminarayan Sanskardham Gurukul",
         htmlFormatContentTitle:true,
         summaryText: "Shree Brahmanand Vidhyalaya",
         htmlFormatSummaryText:true,
       );
     var androidPlatformChannelSpecifics = AndroidNotificationDetails(
         'big text channel id',
         'big text channel name',
         'big text channel description',
         importance: Importance.High,
         styleInformation: bigPictureStyleInformation,
         showWhen:true,
     );
     var platformChannelSpecifics =
     NotificationDetails(androidPlatformChannelSpecifics, null);
     await flutterLocalNotificationsPlugin.show(
         0, 'Rupala', 'Image Notifications', platformChannelSpecifics,payload: "payload",);
   }

   Future<String> _downloadAndSaveFile(String url, String fileName) async {
     var directory = await getApplicationDocumentsDirectory();
     var filePath = '${directory.path}/$fileName';
     var response = await http.get(url);
     var file = File(filePath);
     await file.writeAsBytes(response.bodyBytes);
     return filePath;
   }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        title: Text("Alert Notifications"),
        centerTitle: true,
      ),

      body:Container(
        alignment: Alignment.center,
        child: Column(
          children:<Widget>[
            RaisedButton(
              child: Text("Image Notification"),
              onPressed:_showBigPictureNotification,
            ),
          ],
        ),
      ),
    );
  }*/ // Big Image Notification in flutter

  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child:Container(
            child:Center(
            child:Column(
            children:<Widget>[
               RaisedButton(
                child: Text("Download"),
                onPressed:() async{
                  var id = await ImageDownloader.downloadImage("https://members.shreebrahamanandvidhyalaya.in/mobapi.ssgd.org/ssgd-daily-darshan/uploads/Darshan/2020/08/21/a65a9676-590b-4984-8c3b-14d742d44da8-photo_2020-08-21_08-27-26.jpg",
                       destination: AndroidDestinationType.custom(directory: "MALLBIT")
                        ..subDirectory("mallbit/ssgd.jpg")
                  );
                 },
                ),
               ],
              ),
             ),
           ),
         ),
        ),
      );
  } */ //Download Image in Internal Memory

  /* bool isSwitched = false;
  int _groupvalue = 1;

  Color Clr = Colors.white;
  Color Clr1 = Colors.black;
  Color Clr2 = Colors.white;

  ClrVal character = ClrVal.white;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor:Clr2,//for Radio Button clr
        appBar: AppBar(
          backgroundColor: Clr1,
        ),
        body:Container(
          child: Column(
            children: <Widget>[
              /* Row(
                children: <Widget>[
                  Text("Theme",style:TextStyle(color: Clr1,),),
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Clr1,
                     // disabledColor:Clr1,
                    ),
                    child: Radio<ClrVal>(
                      activeColor: Colors.black,
                      value:ClrVal.white,
                      groupValue: character,
                      onChanged: (ClrVal value){
                        setState(() {
                          character = value;
                          Clr = Colors.white;
                          Clr1 = Colors.black;
                         }
                        );
                      },
                    ) ,
                  ),
                  Text("Light",style:TextStyle(color: Clr1,),),
                  Theme(
                    data: Theme.of(context).copyWith(
                      //unselectedWidgetColor: Colors.red,
                      disabledColor:Clr1,
                    ),

                    child: Radio<ClrVal>(
                      activeColor: Colors.white,
                      value:ClrVal.black,
                      groupValue: character,
                      onChanged: (ClrVal value){
                        setState(() {
                          character = value;
                          Clr = Colors.black;
                          Clr1 = Colors.white;
                        }
                        );
                      },
                    ),
                  ),
                  Text("Dark",style:TextStyle(color: Clr1,),),
                ],
              ),*/
              Switch(
                activeTrackColor: Colors.white60,
                inactiveTrackColor: Colors.black54,
                inactiveThumbColor: Colors.black,
                activeColor: Colors.white,
                value: isSwitched,
                onChanged: (value){
                  setState(() {
                    isSwitched=value;
                    if(isSwitched == true)
                    {
                      Clr1 = Colors.white;
                      Clr2 = Colors.black;
                    }
                    else{
                      Clr1 = Colors.black;
                      Clr2 = Colors.white;
                    }
                  }
                  );
                },
              ),
              Icon(Icons.account_circle,color: Clr1,size: 50,),
              Text("SSgd",style: TextStyle(color:Clr1,fontSize: 50),),
            ],
          ),
        ),
      ),
    );
  }*/ //For Light And Dark mode for flutter (As a switch or Radio Button)

  /*String url = "https://members.shreebrahamanandvidhyalaya.in/mobapi.ssgd.org/ssgd-daily-darshan/uploads/Darshan/2020/08/29/86b6483d-9b8d-4712-b93b-5d19d37f2711-photo_2020-08-29_08-37-06.jpg";
  int location = WallpaperManager.HOME_SCREEN; // or location = WallpaperManager.LOCK_SCREEN;
  String result;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(
            child:RaisedButton(
                /*onPressed:()async{
                  String assetPath = "assets/p7.jpg";
                  int location = WallpaperManager.HOME_SCREEN; // or location = WallpaperManager.LOCK_SCREEN;
                  String result;
                  result =  await WallpaperManager.setWallpaperFromAsset(assetPath, location);
                },*/  //local assets
                onPressed:fromUrl,
                child: Text("Set as a WallPaper"),
              ),
          ),
        ),
      ),
    );
  }//Set As A wallapaper

  fromUrl()async{
    var file = await DefaultCacheManager().getSingleFile(url);
    final String result = await WallpaperManager.setWallpaperFromFile(file.path, location);
  }*/ //From Url set as a WallPaper

 /* Duration _duration = Duration();
  Duration _position = Duration();
  AudioPlayer audioPlayer;
  AudioCache audioCache;
  bool isplay = false;

   var a;
   var b;
   String ab = "Play";

  void initState() {
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

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    audioPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
        centerTitle: true,
      ),
      body: Container(
        child:Center(
          child: Column(

            children:<Widget>[
              RaisedButton(
                child:Text("$ab"),
                onPressed:(){
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
              ),
              Slider(
                  activeColor: Colors.black,
                  inactiveColor: Colors.pink,
                 value: a = _position.inSeconds.toDouble(),
                  min:  0.0,
                  max: b = _duration.inSeconds.toDouble(),
                  semanticFormatterCallback:  (double newValue) {
                    return '${newValue.round()}';
                   },
                  onChanged: (double value) {
                     setState(() {
                      seekToSecond(value.toInt());
                      value = value;
                      }
                    );
                  }
                ),
              Text("$a/$b"),
            ],
          ),
        ),
      ),
    );
  }*/ //Audio Player in flutter

  /*ScanResult result1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR and Barcode Scanner"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Scan"),
              onPressed: () async {
                var status = await Permission.camera.status;

                if (status.isGranted) {
                  ScanResult result = await BarcodeScanner.scan();
                  setState(() {
                    result1 = result;
                  });
                } else {
                  await Permission.camera.request();
                }
              },
            ),
            Text("$result1"),
          ],

        ),
      ),
    );
  }*/ //Barcode and Qrcode Scannner with Permission handler

  /*String videoURL = "https://www.youtube.com/watch?v=5MxXj-E5FhI";

  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL)
    );
    super.initState();
  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(

        appBar:AppBar(
          title: Text("Youtube Player"),
          centerTitle:true,
        ),

      body:Container(
       child: Center(
         child:YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: false,
            ),
         ),
      ),
    );
  }*/ //Youtube Player

  /*String _downloadMessage = "initialising";
  bool _isDownloading = false;
  double _percentage;

  int location = WallpaperManager.HOME_SCREEN; // or location = WallpaperManager.LOCK_SCREEN;
  static final Random random = Random();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Downloading process"),
        centerTitle:true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            RaisedButton(
              child: Text("Download"),
              onPressed:() async{
                setState((){
                  _isDownloading = !_isDownloading;
                }
                );

                var dir = await getExternalStorageDirectory();
                String dirloc = "";

                Dio dio = Dio();

                var status = await Permission.storage.status;
                if(status.isGranted){

                  dirloc = "/sdcard/Rupala/Darshan/";  //Folder inside the Folder

                  FileUtils.mkdir([dirloc]);
                  var randid = random.nextInt(10000000);
                  dio.download("https://members.shreebrahamanandvidhyalaya.in/mobapi.ssgd.org/ssgd-daily-darshan/uploads/Darshan/2020/08/28/88033e42-b5d8-4d8f-9a1d-4bcc722300d4-photo_2020-08-28_08-41-03.jpg", dirloc +  randid.toString() + ".jpg",
                      onReceiveProgress: (actualbytes,totalbytes){

                        var percent = actualbytes/totalbytes*100;

                        if(percent<100){
                          _percentage = percent/100;
                          setState(() {
                            _downloadMessage = "Downloading ${percent.floor()} %";
                          }
                          );
                        }
                        else{
                          _downloadMessage = "Successfully Downloaded";
                        }
                      }
                  );
                }
                else
                {
                  await Permission.storage.request();
                }
                //final String result = await WallpaperManager.setWallpaperFromFile(dirloc, location);
              },
            ),

            Text(_downloadMessage ?? "",style:Theme.of(context).textTheme.headline,),

            CircularProgressIndicator(
              value:_percentage,
            ),

          ],
        ),
      ),
    );
  }*/ //Dio Download

  /* File _image;

  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickedFile.path);
    });
  }
  Future getImage2() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
        centerTitle: true,
      ),
      body:Center(
        child:Column(
          children:<Widget>[
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              child:_image == null?Text("No Image Inside Box"):Image.file(_image),
            ),

            PopupMenuButton<int>(
              icon: Icon(Icons.camera),
              itemBuilder: (context)=>[
                PopupMenuItem(
                  value: 1,
                  child:Text("Pick Image From Camera"),
                ),
                PopupMenuItem(
                  value: 2,
                  child:Text("Pick Image From Gallery"),
                )
              ],
              onSelected: (value){
                if(value == 1){
                  getImage();
                }
                else if(value == 2){
                  getImage2();
                }
              },
            ),





          ],
        ),
      ),
    );
  }*/ //Image Picker (From camera Or Gallery)

  /*Future<List<User>> _getUsers() async {

    var data = await http.get("https://raw.githubusercontent.com/samayo/country-json/master/src/country-by-name.json");

    var jsonData = json.decode(data.body);

    List<User> users = [];

    for(var u in jsonData){

      User user = User(u["country"]);

      users.add(user);

    }

    print(users.length);

    return users;

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Json Data"),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            print(snapshot.data);
            if(snapshot.data == null){
              return Container(
                  child: Center(
                      child:CircularProgressIndicator(),
                  )
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    title: Text(snapshot.data[index].country),
                  );
                },
              );
            }
          },
        ),
      ),
    );


  }*/ // Api Call Using the Json Data

  /*Widget _detectWidget() {

    if (Platform.isAndroid) {

       return Text('Android Device Detected',
          style: TextStyle(fontSize: 22));
    }
    else if(Platform.isIOS) {

       return Text('iOS Device Detected',
          style: TextStyle(fontSize: 22));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Detect Device is Android or iOS')
            ),
            body: Center(
                child: _detectWidget()
            )
        )
    );
  }*/ //Check Platform Android Or Ios

  /* static final Random random = Random();
 String path = "";
 File path2;
 var file;
  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[

            RaisedButton(
              child:Text("Download"),
              onPressed:()async{
                Dio dio = Dio();
                String image = "https://members.shreebrahamanandvidhyalaya.in/mobapi.ssgd.org/ssgd-daily-darshan/uploads/Darshan/2020/08/29/808c2c1b-f559-4cd5-850a-804020d567d9-photo_2020-08-29_08-37-08.jpg";
                try{
                  var dir = await getApplicationDocumentsDirectory();
                  String dirloc = "";
                  dirloc = "/sdcard/Rupala1/Darshan/";
                  FileUtils.mkdir([dirloc]);
                  var randid = random.nextInt(10000000);
                  path = dirloc + randid.toString() + ".jpg";
                  //dio.download(image, path,);
                  var response = await http.get(image);
                  file = File(path);
                  await file.writeAsBytes(response.bodyBytes);
                }
                catch (e){
                  print(e);
                }
                print("$file");
                Navigator.push(context,MaterialPageRoute(builder:(context)=>SecondRoute(image:file,)));
              },
            ),

            Image.file(File('/sdcard/Rupala1/Darshan/2177421.jpg')),

          ],
        ),
      ),
    );
  }*/ //FileImage With Zooming

  /*  final List<String> items = <String>[
     '/sdcard/Rupala1/Darshan/2177421.jpg',
     '/sdcard/Rupala1/Darshan/2878836.jpg',
     '/sdcard/Rupala1/Darshan/6037458.jpg',
     '/sdcard/Rupala1/Darshan/8016798.jpg',
     '/sdcard/Rupala1/Darshan/815814.jpg',
     '/sdcard/Rupala1/Darshan/9673592.jpg',
     '/sdcard/Rupala1/Darshan/331911.jpg',
     '/sdcard/Rupala1/Darshan/1213395.jpg',
     '/sdcard/Rupala1/Darshan/2448071.jpg',
  ];

  final List<String> abc = <String>["p1", "p2", "p3", "p4", "p5", "p6", "p7", "p8", "p9",];

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("My Gridview"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        padding: const EdgeInsets.all(4.0),
        itemCount: items.length,
        itemBuilder: (context,index){
          return GridTile(
            child:Hero(
              tag: abc[index],
              child:GestureDetector(
                child: Image.file(File(items[index]),fit: BoxFit.cover,),
                onTap:(){
                       Navigator.push(context,MaterialPageRoute(builder:(context)=>SecondRoute(image:File(items[index]),key1:abc[index],)));
                  },
               )
             ),
           );
        },
      ),
    );
  }*/ //Gridview With Hero animation

  /* @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Internet connectivity'),
        ),
        body: Center(
            child: RaisedButton(
              child: Text('Check connectivity'),
              onPressed: _checkInternetConnectivity,
            )
        )
    );
  }

  _checkInternetConnectivity() async {

    var result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.none) {
      _showDialog(
          'No internet',
          "You're not connected to a network"
      );
    } else if (result == ConnectivityResult.mobile) {
      _showDialog(
          'Internet access',
          "You're connected over mobile data"
      );
    } else if (result == ConnectivityResult.wifi){
      _showDialog(
          'Internet access',
          "You're connected over wifi"
      );
    }
  }

  _showDialog(title, text) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(text),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }*/ //Check internet Connectivity

  /*final dbhelper = DataBasehelper.instance;


  void insertdata()async{
    Map<String,dynamic> row = {
      DataBasehelper.columName:"/sdcard/Rupala1/Wallpaper/159768.jpg",
      //DataBasehelper.columage:23
    };
    final id =  await dbhelper.insert(row);
    print(id);
  }


  void  queryall()async{
    var allrows =  await dbhelper.queryall();
     allrows.forEach((row){
         print(row);
      });
  }


  void  queryspecific() async {
    var allrows =  await dbhelper.queryspecific(18);
    print(allrows);
  }

  void  delete() async {
    var id =  await dbhelper.deletedata(2);
    print(id);
  }

  void  update() async {
    var row =  await dbhelper.update(2);
    print(row);
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Sqflite Database"),
        centerTitle:true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[

            RaisedButton(
              child:Text("Insert",style: TextStyle(color: Colors.white),),
              onPressed:insertdata,
              color: Colors.green,
            ),

            RaisedButton(
              child:Text("Query",style: TextStyle(color: Colors.white),),
              onPressed: queryall,
              color: Colors.red,
            ),

            RaisedButton(
              child:Text("Query Specific",style: TextStyle(color: Colors.white),),
              onPressed:queryspecific,
              color: Colors.teal,
            ),

            RaisedButton(
              child:Text("Update",style: TextStyle(color: Colors.white),),
              onPressed:update,
              color: Colors.amber,
            ),

            RaisedButton(
              child:Text("Delete",style: TextStyle(color: Colors.white),),
              onPressed:delete,
              color: Colors.pink,
            ),

            RaisedButton(
              child:Text("Open Screen",style: TextStyle(color: Colors.white),),
              onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen()));
              },
              color: Colors.pink,
            ),
          ],
        ),
      ),

    );
  }*/ //Store Sqlite database in Directory

  /* DBHelper dbHelper;
 // List<Photo> images;
  static final Random random = Random();

  @override
  void initState(){
    super.initState();
    images.img = [];
    dbHelper = DBHelper();
    refreshImages();
  }

  refreshImages(){
    dbHelper.getPhotos().then((imgs){
      setState((){
        images.img.clear();
        images.img.addAll(imgs);
      });
    });
  }

  pickImageFromGallery()async{
    String image = "https://members.shreebrahamanandvidhyalaya.in/mobapi.ssgd.org/ssgd-daily-darshan/uploads/Darshan/2020/08/21/3d708807-9491-4f5f-89ec-733f242bc60e-photo_2020-08-21_22-31-58.jpg";
     Dio dio = Dio();
    var dir = await getApplicationDocumentsDirectory();
    String dirloc = "";
    var randid = random.nextInt(10000000);
    dirloc = "/sdcard/SSGD/" + randid.toString() + ".jpg";  //Folder inside the Folder
    dio.download(image,dirloc);
    Photo photo = Photo(0,dirloc);
    dbHelper.save(photo);
    refreshImages();
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Database"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed:(){
              pickImageFromGallery();
            },
          )
        ],
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Show data"),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen()));
          },
        ),
      ),
    );
  }*/ //Use OF Sqflite database

  /*final List<String> items = <String>[
    '/sdcard/Rupala1/Darshan/2177421.jpg',
    '/sdcard/Rupala1/Darshan/2878836.jpg',
    '/sdcard/Rupala1/Darshan/6037458.jpg',
    '/sdcard/Rupala1/Darshan/8016798.jpg',
    '/sdcard/Rupala1/Darshan/815814.jpg',
    '/sdcard/Rupala1/Darshan/9673592.jpg',
    '/sdcard/Rupala1/Darshan/331911.jpg',
    '/sdcard/Rupala1/Darshan/1213395.jpg',
    '/sdcard/Rupala1/Darshan/2448071.jpg',
  ];

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Delete Items"),
        centerTitle: true,
      ),
      body:  GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        padding: const EdgeInsets.all(4.0),
        itemCount: items.length,
        itemBuilder: (context,index){
          return GridTile(
                child:GestureDetector(
                  child:Image.file(File(items[index]),fit: BoxFit.cover,),
                  onLongPress:(){
                  },
                ),
           );
        },
      ),
    );
  }*/

  /*  List<Item> itemList;
  List<Item> selectedList;


  @override
  void initState(){
    loadList();
    super.initState();
  }

  loadList(){
    itemList = List();
    selectedList = List();
    print("$selectedList");
    itemList.add(Item("assets/p1.jpg", 1));
    itemList.add(Item("assets/p2.jpg", 2));
    itemList.add(Item("assets/p3.jpg", 3));
    itemList.add(Item("assets/p1.jpg", 4));
    itemList.add(Item("assets/p2.jpg", 5));
    itemList.add(Item("assets/p3.jpg", 6));
    itemList.add(Item("assets/p1.jpg", 7));
    itemList.add(Item("assets/p2.jpg", 8));
    itemList.add(Item("assets/p3.jpg", 9));
    itemList.add(Item("assets/p1.jpg", 10));
    itemList.add(Item("assets/p2.jpg", 11));
    itemList.add(Item("assets/p3.jpg", 12));
    itemList.add(Item("assets/p1.jpg", 13));
    itemList.add(Item("assets/p2.jpg", 14));
    itemList.add(Item("assets/p3.jpg", 15));
    itemList.add(Item("assets/p1.jpg", 16));
    itemList.add(Item("assets/p2.jpg", 17));
    itemList.add(Item("assets/p3.jpg", 18));
    itemList.add(Item("assets/p1.jpg", 19));
    itemList.add(Item("assets/p2.jpg", 20));
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: getAppBar(),
      body: GridView.builder(
          itemCount:itemList.length,
          padding: EdgeInsets.all(5),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2
          ),
          itemBuilder:(context,index){
            return GridItem(
                item:itemList[index],
                isSelected: (bool value){
                  setState((){
                    if(value){
                       selectedList.add(itemList[index]);
                      // print("$selectedList");
                     }
                    else{
                        selectedList.remove(itemList[index]);

                        if(selectedList.length == 0){
                          selectedList.clear();
                          LongPress = false;
                        }

                       }
                     }
                   );
                // print("$index:$value");
                },
                 key:Key(itemList[index].rank.toString()),
                abcd:selectedList,
                );
              }
          ),
       );
   }

  getAppBar(){
    return AppBar(
      title: Text(selectedList.length < 1
          ? "Multi Selection"
          : "${selectedList.length} item selected"),
      actions: <Widget>[
        selectedList.length < 1
            ? Container()
            : InkWell(
            onTap:(){
              setState((){
                for(int i = 0;i < selectedList.length;i++){
                   itemList.remove(selectedList[i]);
                  }
                 selectedList = List();
                setState((){
                  LongPress = false;
                });
               }
              );
            },
            child:Padding(
              padding:const EdgeInsets.all(8.0),
              child:Icon(Icons.delete),
            )
        )
      ],
    );
  }

  List<String> _imageList = List();
  List<int> _selectedIndexList = List();
  bool _selectionMode = false;

  @override
  Widget build(BuildContext context){

    List<Widget> _buttons = List();

    if(_selectionMode){
      _buttons.add(IconButton(
          icon: Icon(Icons.delete),
          onPressed:(){
            _selectedIndexList.sort();
            print('Delete ${_selectedIndexList.length} items! Index: ${_selectedIndexList.toString()}');
              }
           )
        );
     }

    return Scaffold(
      appBar: AppBar(
        title: Text("Delete Items"),
        actions: _buttons,
      ),
      body: _createBody(),
    );
  }

  @override
  void initState(){
    super.initState();
    _imageList.add('https://picsum.photos/800/600/?image=280');
    _imageList.add('https://picsum.photos/800/600/?image=281');
    _imageList.add('https://picsum.photos/800/600/?image=282');
    _imageList.add('https://picsum.photos/800/600/?image=283');
    _imageList.add('https://picsum.photos/800/600/?image=284');
  }

  void _changeSelection({bool enable, int index}){
    _selectionMode = enable;
    _selectedIndexList.add(index);
    if (index == -1) {
      _selectedIndexList.clear();
    }
  }

  Widget _createBody(){
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      primary:false,
      itemCount: _imageList.length,
      itemBuilder: (BuildContext context, int index){
        return getGridTile(index);
      },
      staggeredTileBuilder: (int index) => StaggeredTile.count(1, 1),
      padding: const EdgeInsets.all(4.0),
    );
  }

  GridTile getGridTile(int index) {
    if (_selectionMode) {
      return GridTile(
          header: GridTileBar(
            leading: Icon(
              _selectedIndexList.contains(index) ? Icons.check_circle_outline : Icons.radio_button_unchecked,
              color: _selectedIndexList.contains(index) ? Colors.green : Colors.black,
            ),
          ),
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.blue[50], width: 30.0)),
              child: Image.network(
                _imageList[index],
                fit: BoxFit.cover,
              ),
            ),
            onLongPress: () {
              setState(() {
                _changeSelection(enable: false, index: 0);
              });
            },
            onTap: () {
              setState((){
                if (_selectedIndexList.contains(index)) {
                  _selectedIndexList.remove(index);
                } else {
                  _selectedIndexList.add(index);
                }
              });
            },
          )
      );
    } else {
      return GridTile(
        child: InkResponse(
          child: Image.network(
            _imageList[index],
            fit: BoxFit.cover,
          ),
          onLongPress: () {
            setState(() {
              _changeSelection(enable: true, index: index);
            });
          },
        ),
      );
    }
  }*/


 @override

  Widget build(BuildContext context) {

    return Scaffold(
     appBar:AppBar(),
     body:Center(
       child:RaisedButton(
         onPressed:(){
           Navigator.push(context,MaterialPageRoute(builder:(context)=>AudioPlayer()));
         },
         child:Text("Music Player"),
       ),
     ),
    );

  }



}

/*class User {
  final String country;
  User(this.country);
}*/



/*class Item{
  String imageUrl;
  int rank;
  Item(this.imageUrl,this.rank);
}



class GridItem extends StatefulWidget {
  final Key key;
  final Item item;
  final ValueChanged<bool> isSelected;
  final List<Item> abcd;

  GridItem({this.item, this.isSelected, this.key,this.abcd});

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onLongPress:(){
        setState((){
            isSelected = !isSelected;
            widget.isSelected(isSelected);
            LongPress = true;
          }
        );
      },

      onTap:(){
          print("$LongPress");
          if(LongPress == true){
            setState(() {
              isSelected = !isSelected;
              widget.isSelected(isSelected);
            }
            );
          }
          else{
          
          }
      },

      child: Stack(
        children: <Widget>[
          Image.asset(
            widget.item.imageUrl,
            color: Colors.black.withOpacity(isSelected ? 0.9 : 0),
            colorBlendMode: BlendMode.color,
            fit: BoxFit.cover,
          ),
          isSelected ? Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.check_circle,
                color: Colors.blue,
              ),
            ),
          )
              : Container()
        ],
      ),
    );
  }
}*/

 /* List<String> selectedList = [];
  bool longPressed = false;
  bool isSelected = false;


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBar(),
      body: GridView.builder(
          padding: EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount:abcd.length,
          itemBuilder: (c,index){
          String alphabet = abcd[index];
            return child(alphabet);
            }
          ),
     );
  }

  Widget appBar(){
    return AppBar(
      actions:[
        if(longPressed)IconButton(icon: Icon(Icons.select_all), onPressed: selectAllFn),
        if(longPressed)IconButton(icon: Icon(Icons.cancel), onPressed: cancelLongPress),
      ],
    );
  }

  Widget child(String alphabet){
    bool alreadySelected = selectedList.contains(alphabet);
    return GestureDetector(
     // onTap:() => onTap(alphabet),

      onTap:(){

      },


      onLongPress:()=> onLongPress(alphabet),
      child: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        color: alreadySelected?Colors.green : Colors.blue,
        child: Text(alphabet),
      ),
    );
  }


//FUNCTIONS
  void selectAllFn(){
    setState(() {
      selectedList.clear();
      selectedList.addAll(abcd);
    });
  }

  void onTap(String alphabet){
   // bool alreadySelected = selectedList.contains(alphabet);
    if (longPressed){
      selectedList.add(alphabet);
    }
    else{

     }
  }

  void onLongPress(String alphabet){
    setState(() {
      selectedList.add(alphabet);
      longPressed = true;
    });
  }

  void cancelLongPress(){
    setState(() {
      longPressed = false;
      selectedList.clear();
    });
  }

  static const List<String> abcd = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];





}*/

