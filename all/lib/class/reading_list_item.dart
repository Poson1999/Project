class ReadingListItem {
  String id, userId, pageName, content;

  ReadingListItem(this.id, this.userId, this.pageName, this.content);

  ReadingListItem.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['user_id'],
        pageName = json['page_name'],
        content = json['content'];

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'user_id': userId,
    'page_name': pageName,
    'content': content,
  };

}