import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String tableName = "questions";
final String columnId = "id";
final String columnQuestion = "question";
final String columnAnswer = "answer";
final String columnCount = "count";
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
      columnCount: this.count,
    };
  }
}

class QuestionHelper{
  Database _database;

  QuestionHelper(){
    initDatabase();
  }

QuestionHelper._();

  static final QuestionHelper db = QuestionHelper._();

  Future<Database> get database async {
    if (_database != null) return _database;
    // if _database is null we instantiate it
    _database = await initDatabase();
    return _database;
  }

  initDatabase() async{
      _database = await openDatabase(
      join(await getDatabasesPath(), "questions.db"),
      onCreate: (_database, version){
        return _database.execute("CREATE TABLE $tableName($columnId INTEGER PRIMARY KEY AUTOINCREMENT, $columnQuestion TEXT, $columnAnswer TEXT, $columnCount INTEGER)");
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
    List<Map<String, dynamic>> questions = await db.query(tableName);
    return List.generate(questions.length, (i){
      return QuestionsModel(id: questions[i][columnId], question: questions[i][columnQuestion], answer: questions[i][columnAnswer], count: questions[i][columnCount]);
    });
  }
}