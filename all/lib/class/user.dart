// 設定使用者資料的類別，隨時會改;)
class User {
  String id, name, email, password, identificationCode, photoUrl;

  User(
    this.id,
    this.name,
    this.email,
    this.password,
    this.identificationCode,
    this.photoUrl,
  ); //轉換Json的格式

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        password = json['password'],
        identificationCode = json['identification_code'],
        photoUrl = json['photo_url'];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'email': email,
        'password': password,
        'identification_code': identificationCode,
        'photo_url': photoUrl,
      };
}
