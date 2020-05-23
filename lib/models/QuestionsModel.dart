import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';

final String tableName = "questions";
final String columnId = "id";
final String columnQuestion = "question";
final String columnAnswer = "answer";
final String columnIncAnswers = "incanswer";
final String columnIsFav = "isfav";
class QuestionsModel {
  int id;
  final String question;
  final String answer;
  final String incanswer;
  final int isfav;

  QuestionsModel({this.id, this.question, this.answer, this.incanswer, this.isfav});

  Map <String, dynamic> toMap() {
    return {
      // columnId: this.id,
      columnQuestion: this.question,
      columnAnswer: this.answer,
      columnIncAnswers: this.incanswer,
      columnIsFav: this.isfav,
    };
  }
}

class QuestionHelper{
  Database db;

  QuestionHelper(){
    initDatabase();
  }

  Future<Database> get database async {
    if (null != database) {
      return db;
    }
    db = await initDatabase();
    return db;
  }

  initDatabase() async{
    db = await openDatabase(
      join(await getDatabasesPath(), "questions27.db"),
      onCreate: (db, version){
        return db.execute("CREATE TABLE $tableName($columnId INTEGER PRIMARY KEY AUTOINCREMENT, $columnQuestion TEXT, $columnAnswer TEXT, $columnIncAnswers TEXT, $columnIsFav INTEGER DEFAULT 0 NOT NULL)");
      },
      version: 1
    );
  }

  Future<void> insertQuestion(QuestionsModel question) async{
    try{
      db.insert(tableName, question.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
    }catch(_){
      // print(_);
    }
  }

  Future<List<QuestionsModel>> getAllQuestion () async{
    List<Map<String, dynamic>> questions = await db.query(tableName);
    return List.generate(questions.length, (i){
      return QuestionsModel(id: questions[i][columnId], question: questions[i][columnQuestion], answer: questions[i][columnAnswer], incanswer: questions[i][columnIncAnswers], isfav: questions[i][columnIsFav]);
    });
  }

  Future<List<QuestionsModel>> getSomeQuestions (String amount) async{
    List<Map<String, dynamic>> questions = await db.rawQuery("SELECT * FROM " + tableName + " ORDER BY RANDOM() LIMIT " + amount, null);
    return List.generate(questions.length, (i){
      return QuestionsModel(id: questions[i][columnId], question: questions[i][columnQuestion], answer: questions[i][columnAnswer], incanswer: questions[i][columnIncAnswers], isfav: questions[i][columnIsFav]);
    });
  }

  Future<List<QuestionsModel>> getFavQuestions () async{
    List<Map<String, dynamic>> questions = await db.rawQuery("SELECT * FROM " + tableName + " WHERE isfav=1");
    return List.generate(questions.length, (i){
      return QuestionsModel(id: questions[i][columnId], question: questions[i][columnQuestion], answer: questions[i][columnAnswer], incanswer: questions[i][columnIncAnswers], isfav: questions[i][columnIsFav]);
    });
  }

  Future<void> makeFav(QuestionsModel question) async {
    final sql = '''UPDATE $tableName
    SET isfav = 1
    WHERE id = ?
    ''';

    List<dynamic> params = [question.id];
    
    try{
      await db.rawUpdate(sql, params);
    }catch(_){
      print(_);
    }
  }

  Future<void> makeUnfav(QuestionsModel question) async {
    final sql = '''UPDATE $tableName
    SET isfav = 0
    WHERE id = ?
    ''';

    List<dynamic> params = [question.id];
    
    try{
      await db.rawUpdate(sql, params);
    }catch(_){
      print(_);
    }
  }
}