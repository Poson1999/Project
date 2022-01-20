
// 書籤資料的物件
class Bookmark {
  String id, userId, pageName;

  Bookmark(this.id, this.userId, this.pageName);

  Bookmark.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['user_id'],
        pageName = json['page_name'];

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'user_id': userId,
    'page_name': pageName,
  };

}