import 'package:flutter/material.dart';
import 'package:all/pages/test_page.dart';
import 'package:all/pages/community_page.dart';
import 'package:all/pages/chat_page.dart';
import 'package:all/pages/edit_profile.dart';
import 'package:all/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: const Scaffold(body: BottomNavigationController()),
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
  final pages = [const HomePage(), const TestPage(), const CommunityPage()];
  String name = 'Poson Lu';
  String mail = 'poson1005@gmail.com';

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(),
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/tree.png'),
                      fit: BoxFit.cover)),
              accountName: Text(name),
              accountEmail: Text(mail),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: const AssetImage('assets/images/tree.png'),
                  child: ClipOval(
                      child: Image.asset('assets/images/dog.png',
                          fit: BoxFit.cover))),
            ),
            ListTile(
              title: const Text('About us'),
              leading: const Icon(Icons.help_outline, color: Colors.green),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Reference link'),
              leading: const Icon(Icons.link, color: Colors.green),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Q&A'),
              leading: const Icon(Icons.people_outline, color: Colors.green),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Bookmark'),
              leading: const Icon(Icons.bookmark_outline, color: Colors.green),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Reading List'),
              leading: const Icon(Icons.list, color: Colors.green),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Liked Shops'),
              leading: const Icon(Icons.storefront, color: Colors.green),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Liked Article'),
              leading: const Icon(Icons.thumb_up_off_alt, color: Colors.green),
              onTap: () {},
            ),
            ListTile(
                title: const Text('My Certificate'),
                leading: const Icon(Icons.school_outlined, color: Colors.green),
                onTap: () {}),
            ListTile(
              title: const Text('Edit Profile'),
              leading: const Icon(Icons.edit_outlined, color: Colors.green),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const EditProfile())),
            ),
            ListTile(
              title: const Text('Logout'),
              leading: const Icon(Icons.logout, color: Colors.green),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
          title: const Text('BamCommunity'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ChatPage())),
                icon: const Icon(Icons.forum))
          ]),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.school,
                  size: 30,
                ),
                label: 'Knowledge'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_book,
                  size: 30,
                ),
                label: 'Test'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.groups,
                  size: 35,
                ),
                label: 'Community')
          ],
          iconSize: 20,
          unselectedFontSize: 12,
          selectedFontSize: 16,
          currentIndex: _currentIndex,
          fixedColor: Colors.green,
          onTap: _onItemClick));

  void _onItemClick(int index) => setState(() => _currentIndex = index);
}
