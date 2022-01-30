import 'package:all/pages/auth/signin_signup.dart';
import 'package:all/pages/bookmark/bookmark_page.dart';
import 'package:flutter/material.dart';
import 'package:all/pages/exams/test_page.dart';
import 'package:all/pages/community_page.dart';
import 'package:all/pages/chat_page.dart';
import 'package:all/pages/edit_profile.dart';
import 'package:all/pages/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 用來檢查是否已登入
bool isLoggedIn = false;

void main() async {
  // 在main用到async要加這行
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  // 檢查isLoggedIn的值，若為null 則指定為false
  isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: isLoggedIn
            ? const Scaffold(body: BottomNavigationController())
            : const SignInUp(),
        // 命名每個畫面的代號，可使用代號轉跳，書籤轉跳的功能可能會用到
        routes: <String, WidgetBuilder>{
          '/main': (BuildContext context) =>
              const Scaffold(body: BottomNavigationController()),
          '/auth': (BuildContext context) => const SignInUp(),
        },
        debugShowCheckedModeBanner: false,
      );
}

class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({Key? key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  int _currentIndex = 0;
  static const pages = [HomePage(), TestPage(), CommunityPage()];
  String userName = "";
  String userEmail = "";
  String photoUrl = "";

  // 登出時將登入狀態清空
  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/auth', (Route<dynamic> route) => false);
  }

  void getProfile() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString("UserName")!;
      userEmail = prefs.getString("UserEmail")!;
      if (prefs.getString("PhotoFlag")! == "0") {
        photoUrl = "https://project-ccu-2021.000webhostapp.com/pic/user/default.png";
      } else {
        photoUrl = "https://project-ccu-2021.000webhostapp.com/pic/user/"
            + prefs.getString("UserId")! + ".png";
      }
    });
  }

  @override
  void initState() {
    getProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: Drawer(
            child:
                ListView(padding: const EdgeInsets.only(), children: <Widget>[
          UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/tree.png'),
                      fit: BoxFit.cover)),
              accountName: Text(userName),
              accountEmail: Text(userEmail),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: const AssetImage('assets/images/tree.png'),
                  child: ClipOval(
                      child: Image.network(photoUrl, fit: BoxFit.cover)))),
          ListTile(
              title: const Text('About us'),
              leading: const Icon(Icons.help_outline, color: Colors.green),
              onTap: () {}),
          ListTile(
              title: const Text('Reference link'),
              leading: const Icon(Icons.link, color: Colors.green),
              onTap: () {}),
          ListTile(
              title: const Text('Q&A'),
              leading: const Icon(Icons.people_outline, color: Colors.green),
              onTap: () {}),
          ListTile(
              title: const Text('Bookmark'),
              leading: const Icon(Icons.bookmark_outline, color: Colors.green),
              onTap: ()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BookMarkPage()))),
          ListTile(
              title: const Text('Reading List'),
              leading: const Icon(Icons.list, color: Colors.green),
              onTap: () {}),
          ListTile(
              title: const Text('Liked Shops'),
              leading: const Icon(Icons.storefront, color: Colors.green),
              onTap: () {}),
          ListTile(
              title: const Text('Liked Article'),
              leading: const Icon(Icons.thumb_up_off_alt, color: Colors.green),
              onTap: () {}),
          ListTile(
              title: const Text('My Certificate'),
              leading: const Icon(Icons.school_outlined, color: Colors.green),
              onTap: () {}),
          ListTile(
              title: const Text('Edit Profile'),
              leading: const Icon(Icons.edit_outlined, color: Colors.green),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EditProfile()))),
          ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout, color: Colors.green),
              onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                          title: const Text('Are you sure to logout?'),
                          content:
                              const Text('This action can not be canceled.'),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel')),
                            TextButton(
                                onPressed: () => logout(),
                                child: const Text('Logout'))
                          ])))
        ])),
        appBar: AppBar(
            title: const Text('BamCommunity'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatPage())),
                  icon: const Icon(Icons.forum))
            ]),
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.school, size: 30), label: 'Knowledge'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book, size: 30), label: 'Exam'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.groups, size: 30), label: 'Community')
            ],
            iconSize: 20,
            unselectedFontSize: 12,
            selectedFontSize: 16,
            currentIndex: _currentIndex,
            fixedColor: Colors.green,
            onTap: _onItemClick));

  void _onItemClick(int index) => setState(() => _currentIndex = index);
}