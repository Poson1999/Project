import 'package:all/pages/auth/signin_signup.dart';
import 'package:all/pages/category/text.dart';
import 'package:all/pages/category_function/bookmark_page.dart';
import 'package:all/pages/category_function/qa_list_page.dart';
import 'package:all/pages/category_function/reading_list_page.dart';
import 'package:all/pages/constant.dart';
import 'package:flutter/material.dart';
import 'package:all/pages/exams/test_page.dart';
import 'package:all/pages/community/community_page.dart';
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

  void getProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      userName = prefs.getString("UserName")!;
      userEmail = prefs.getString("UserEmail")!;
      photoUrl = prefs.getString("Photo")!;
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
          child: ListView(padding: const EdgeInsets.only(), children: <Widget>[
        UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/homepage/tree.png'),
                    fit: BoxFit.cover)),
            accountName: Text(userName),
            accountEmail: Text(userEmail),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
                    child: Image.network(photoUrl, fit: BoxFit.cover)))),
        ListTile(
            title: const Text(dr),
            leading: const Icon(Icons.help_outline, color: Colors.green),
            onTap: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) =>
                    SimpleDialog(children: <Widget>[
                      const Padding(
                          padding: EdgeInsets.only(
                              left: 10, top: 5, right: 10, bottom: 5),
                          child: Text(au0, style: titleStyle)),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 5, right: 10, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Expanded(child: Text(au, style: textStyle)),
                                SizedBox(width: 5),
                                Expanded(
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/homepage/au.png")))
                              ])),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: 10, top: 5, right: 10, bottom: 5),
                          child: Text(au1, style: textStyle)),
                      const Padding(
                          padding: EdgeInsets.only(
                              left: 10, top: 5, right: 10, bottom: 5),
                          child: Text(au2, style: titleStyle)),
                      const Padding(
                          padding: EdgeInsets.only(left: 10, top: 5, right: 10),
                          child: Text(au3, style: textStyle))
                    ])) /*Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AboutUs()))*/
            ),
        const Divider(),
        /*ListTile(
            title: const Text(dr1),
            leading: const Icon(Icons.link, color: Colors.green),
            onTap: () {}),*/
        ListTile(
            title: const Text(dr2),
            leading: const Icon(Icons.people_outline, color: Colors.green),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const QAList()))),
        const Divider(),
        ListTile(
            title: const Text(dr3),
            leading: const Icon(Icons.bookmark_outline, color: Colors.green),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BookMarkPage()))),
        const Divider(),
        ListTile(
            title: const Text(dr4),
            leading: const Icon(Icons.list, color: Colors.green),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ReadingListPage()))),
        const Divider(),
        /*ListTile(
            title: const Text(dr5),
            leading: const Icon(Icons.storefront, color: Colors.green),
            onTap: () {}),
        ListTile(
            title: const Text(dr6),
            leading: const Icon(Icons.thumb_up_off_alt, color: Colors.green),
            onTap: () {}),
        ListTile(
            title: const Text(dr7),
            leading: const Icon(Icons.school_outlined, color: Colors.green),
            onTap: () {}),*/
        ListTile(
            title: const Text(dr8),
            leading: const Icon(Icons.edit_outlined, color: Colors.green),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const EditProfile()))),
        const Divider(),
        ListTile(
            title: const Text(dr9),
            leading: const Icon(Icons.logout, color: Colors.green),
            onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                        title: const Text('Are you sure to logout?'),
                        content: const Text('This action can not be canceled.'),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel')),
                          TextButton(
                              onPressed: () => logout(),
                              child: const Text('Logout'))
                        ]))),
        const Divider()
      ])),
      appBar: AppBar(title: const Text('Bamtech'), centerTitle: true),
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
