class Video {
  String url, name;
  int flag;

  Video(this.url, this.name, this.flag);

  Video.fromJson(Map<String, dynamic> json)
      : url = json['url'],
        name = json['name'],
        flag = json['flag'];

  Map<String, dynamic> toJson() => <String, dynamic>{'url': url, 'name': name, 'flag': flag};
}
