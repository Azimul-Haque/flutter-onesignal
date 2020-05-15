import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String tableName = "questions";
final String columnId = "id";
final String columnQuestion = "question";
final String columnAnswer = "answer";
final String columncount = "count";
class QuestionsModel {
  final int id;
  final String question;
  final String answer;
  final int count;

  QuestionsModel({this.id, this.question, this.answer, this.count});

  Map <String, dynamic> toMap() {
    return {
      // columnId: this.id,
      columnQuestion: this.question,
      columnAnswer: this.answer,
      columncount: this.count,
    };
  }
}

class QuestionHelper{
  Database db;

  QuestionHelper(){
    initDatabase();
  }

  Future<void> initDatabase() async{
    db = await openDatabase(
      join(await getDatabasesPath(), "questions.db"),
      onCreate: (db, version){
        return db.execute("CREATE TABLE $tableName($columnId INTEGER PRIMARY KEY AUTOINCREMENT, $columnQuestion TEXT, $columnAnswer TEXT, $columncount INTEGER)");
      },
      version: 1
    );
  }

  Future<void> insertQuestion(QuestionsModel question) async{
    try{
      db.insert(tableName, question.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
    }catch(_){
      print(_);
    }
  }

  Future<List<QuestionsModel>> getAllQuestion () async{
    final List<Map<String, dynamic>> questions = await db.query(tableName);

    return List.generate(questions.length, (i){
      return QuestionsModel(id: questions[i][columnId], question: questions[i][columnQuestion], answer: questions[i][columnAnswer], count: questions[i][columncount]);
    });
  }
}