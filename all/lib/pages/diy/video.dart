class Video {
  String url, name;

  Video(this.url, this.name);

  Video.fromJson(Map<String, dynamic> json)
      : url = json['url'],
        name = json['name'];

  Map<String, dynamic> toJson() => <String, dynamic>{'url': url, 'name': name};
}
