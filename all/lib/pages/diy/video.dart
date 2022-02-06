class Video {
  String url, title;
  int flag;

  Video(this.url, this.title, this.flag);

  Video.fromJson(Map<String, dynamic> json)
      : url = json['url'],
        title = json['title'],
        flag = json['flag'];

  Map<String, dynamic> toJson() => <String, dynamic>{'url': url, 'name': title, 'flag': flag};
}
