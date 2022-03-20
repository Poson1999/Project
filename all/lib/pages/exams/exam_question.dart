
class EQuestion {
  String id, question, option1, option2, option3, option4, correctAnswer, category;
  String? imageUrl, selectedAnswer;


  EQuestion(this.id, this.question, this.option1, this.option2, this.option3,
      this.option4, this.correctAnswer, this.category, this.imageUrl);

  EQuestion.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        question = json['question'],
        option1 = json['option_1'],
        option2 = json['option_2'],
        option3 = json['option_3'],
        option4 = json['option_4'],
        correctAnswer = json['correct_answer'],
        category = json['category'],
        imageUrl = json['image_url'];

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'question': question,
    'option_1': option1,
    'option_2': option2,
    'option_3': option3,
    'option_4': option4,
    'correct_answer': correctAnswer,
    'category': category,
    'image_url': imageUrl,
  };

}