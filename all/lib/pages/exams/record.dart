
// 每筆考試的紀錄
class Record {
  String category1,  category2, category3, category4, category5, category6, category7;
  String id, userId, score, date, level;


  Record(
      this.id,
      this.userId,
      this.score,
      this.category1,
      this.category2,
      this.category3,
      this.category4,
      this.category5,
      this.category6,
      this.category7,
      this.date,
      this.level);

  Record.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['user_id'],
        score = json['score'],
        date = json['date'],
        level = json['level'],
        category1 = json['category_1'],
        category2 = json['category_2'],
        category3 = json['category_3'],
        category4 = json['category_4'],
        category5 = json['category_5'],
        category6 = json['category_6'],
        category7 = json['category_7'];

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'user_id': userId,
    'score': score,
    'date': date,
    'level': level,
    'category_1': category1,
    'category_2': category2,
    'category_3': category3,
    'category_4': category4,
    'category_5': category5,
    'category_6': category6,
    'category_7': category7,
  };


}