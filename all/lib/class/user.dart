// 設定使用者資料的類別，隨時會改;)
class User{

  String id, name, email, password, isVerified, identificationCode;

  User(this.id, this.name, this.email, this.password, this.isVerified,
      this.identificationCode); //轉換Json的格式


  User.fromJson(Map<String, dynamic> json)
      :   id = json['id'],
        name = json['name'],
        email = json['email'],
        password = json['password'],
        isVerified = json['is_verified'],
        identificationCode = json['identification_code'];


  Map<String, dynamic> toJson() =>
      <String, dynamic>{
        'id': id,
        'name': name,
        'email': email,
        'password': password,
        'is_verified': isVerified,
        'identification_code': identificationCode,
      };
}