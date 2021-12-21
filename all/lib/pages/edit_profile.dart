import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  Future<void> uploadpic() async{
    XFile? file;
    ImagePicker _picker = ImagePicker();
    file = await _picker.pickImage(source: ImageSource.gallery);
    String base64Image = "";

    if(file == null){
      // 如果沒有選中的圖片
      Fluttertoast.showToast(
        msg: "CanCelled",
      );
      return;
    }else{
      // 把圖片轉換成數值型態
      File image = File(file.path);
      List<int> imageBytes = image.readAsBytesSync();
      base64Image = base64Encode(imageBytes);
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId = prefs.getString('UserId') ?? "null";

    var url = "https://project-ccu-2021.000webhostapp.com/phpformobile/uploadpic.php";
    var data = {
      "image": base64Image,
      "name": userId + ".png",
    };

    // 上傳並等待結果
    try{
      var res = await http.post(Uri.parse(url), body: data);
      var result = jsonDecode(res.body);
      Fluttertoast.showToast(
        msg: result.toString(),
      );

    }catch(e){
      Fluttertoast.showToast(
        msg: e.toString(),
      );
    }


  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Edit Profile'),
      centerTitle: true,
    ),
    body: Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          child: ClipOval(
              child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/dog.png', fit: BoxFit.cover)
              )
          )
        ),
        const Divider(color: Colors.green),
        ListTile(
            title: const Text('Change Photo'),
            leading: const Icon(Icons.photo, color: Colors.green),
            onTap: () {
              uploadpic();
            }
        ),
        const Divider(color: Colors.green),
        ListTile(
            title: const Text('Change Password'),
            leading: const Icon(Icons.password, color: Colors.green),
            onTap: () { }
        ),
        const Divider(color: Colors.green),
        ListTile(
            title: const Text('Delete Account'),
            leading: const Icon(Icons.warning, color: Colors.red),
            onTap: () { }
        ),
        const Divider(color: Colors.green),
      ],
    ),
  );
}
