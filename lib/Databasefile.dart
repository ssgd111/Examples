/*import 'dart:io'as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'Photo.dart';

/*class DataBasehelper{

  static final _databasename = "ssgd.db";
  static final _databaseversion = 1;

  static final table = "Rupala";

  static final columId ='id';
  static final columName = "name";
  static final columage = 'age';

  static Database _database;

  DataBasehelper._privateConstructor();

  static final DataBasehelper instance = DataBasehelper._privateConstructor();

  Future<Database> get database async{
    if(_database!=null)
      return _database;
    _database = await _initDatabase();
      return _database;
  }

  _initDatabase()async{
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String dirloc = "";
    dirloc = "/sdcard/SSGD/";
    String path2 = documentDirectory.path;
    print("$dirloc");
    String path = join(dirloc,_databasename);
    return await openDatabase(path,version:_databaseversion,onCreate: _onCreate);
  }

  Future _onCreate(Database db,int version)async{
    await db.execute(
      '''
      CREATE TABLE $table( 
      $columId INTEGER PRIMARY KEY,
      $columName TEXT NOT NULL,
      $columage INTEGER NOT NULL
      )
      '''
    );
  }

  Future<int> insert(Map<String,dynamic> row)async{
    Database db = await instance.database;
    return await db.insert(table,row);
  }

  Future<List<Map<String, dynamic>>> queryall() async {
    Database db = await instance.database;
    return await db.query(table);
  }

  // function to queryspecific
   Future<List<Map<String, dynamic>>> queryspecific(int age) async {
    Database db = await instance.database;
    // var res = await db.query(table, where: "age < ?", whereArgs: [age]);
    var res = await db.rawQuery('SELECT * FROM Rupala WHERE age >?', [age]);
    return res;
  }

  // function to delete some data
  Future<int> deletedata(int id) async {
    Database db = await instance.database;
    var res = await db.delete(table, where: "id = ?", whereArgs: [id]);
    return res;
  }

  // function to update some data
  Future<int> update(int id) async {
    Database db = await instance.database;
    var res = await db.update(table, {"name": "Desi Programmer", "age": 2},
        where: "id = ?", whereArgs: [id]);
    return res;
  }


}*/ //Datbase Helper file



class DBHelper {
  static Database _db;
  static const String ID = 'id';
  static const String NAME = 'photo_name';
  static const String TABLE = 'PhotosTable';
  static const String DB_NAME = 'photos.db';

  Future<Database> get db async {
    if (null != _db) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String dirloc = "";
    dirloc = "/sdcard/SSGD/DATA/";
    String path = join(dirloc, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE $TABLE ($ID INTEGER, $NAME TEXT)");
  }

  Future<Photo> save(Photo employee) async {
    var dbClient = await db;
    employee.id = await dbClient.insert(TABLE, employee.toMap());
    return employee;
  }

  Future<List<Photo>> getPhotos() async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query(TABLE, columns: [ID, NAME]);
    List<Photo> employees = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        employees.add(Photo.fromMap(maps[i]));
      }
    }
    print("$employees");
    return employees;
  }

  Future close()async {
    var dbClient = await db;
    dbClient.close();
  }
}*/