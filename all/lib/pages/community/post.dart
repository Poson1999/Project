class Post {
  String content, authorPic, authorName, picture, time;

  Post(this.content, this.authorPic, this.authorName, this.picture, this.time);

  Post.fromJson(Map<String, dynamic> json)
      : content = json['content'],
        authorPic = json['photo'],
        authorName = json['name'],
        picture = json['picture'],
        time = json['post_time'];

  Map<String, dynamic> toJson() => <String, dynamic>{
    'content': content,
    'photo': authorPic,
    'name': authorName,
    'picture': picture,
    'post_time': time,
  };
}
