// 設定使用者資料的類別，隨時會改;)
class User {
  String id, name, email, password, identificationCode, photoFlag;

  User(
    this.id,
    this.name,
    this.email,
    this.password,
    this.identificationCode,
    this.photoFlag,
  ); //轉換Json的格式

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        password = json['password'],
        identificationCode = json['identification_code'],
        photoFlag = json['photo_flag'];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'email': email,
        'password': password,
        'identification_code': identificationCode,
        'photo_flag': photoFlag,
      };
}
