class QAListItem {
  String id, askerId, question, answererId, answer, answererName;


  QAListItem(this.id, this.askerId, this.question, this.answererId, this.answer, this.answererName);

  QAListItem.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        askerId = json['user_id'],
        question = json['question'],
        answererId = json['answerer_id'] ?? "",
        answer = json['answer'] ?? "No answer yet.",
        answererName = json['name'] ?? "";

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'user_id': askerId,
    'question': question,
    'answerer_id': answererId,
    'answer' : answer,
    'name' : answererName
  };

}