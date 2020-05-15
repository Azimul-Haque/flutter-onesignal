class QuestionsModel {
  final int id;
  final String question;
  final String answer;

  QuestionsModel(this.id, this.question, this.answer);

  Map <String, dynamic> toMap() {
    return {
      'id': this.id,
      'question': this.question,
      'answer': this.answer,
    };
  }
}