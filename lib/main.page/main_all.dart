import 'package:flutter/material.dart';
import 'package:instagram/main.page/home.dart';
import 'package:instagram/Search/search.dart';
import 'package:instagram/social/search_social.dart';
import '../style.dart';


void main() {
  runApp(MaterialApp(
      theme: theme,
      home: MyApp()
  )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb8c5da),
      appBar: AppBar(actions: [Icon(Icons.star)],
        title: Text('Instagram',),
      ),

      body:
      Container(
          child:
          [profile(child: Text('home')),
            const search_main(),
            const Search_social(),
            Container(child: Text('target')),
            Container(child: Text('Chat'))] [tab]),


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (i) {
          setState(() {
            tab = (i);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color(0xff131a9f)),
              activeIcon: Icon(Icons.home_outlined),
              label: '홈'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              activeIcon: Icon(Icons.search_outlined),
              label: '검색'),
          BottomNavigationBarItem(icon: Icon(Icons.groups),
              activeIcon: Icon(Icons.groups_outlined),
              label: '소셜'),
          BottomNavigationBarItem(icon: Icon(Icons.track_changes,),
              activeIcon: Icon(Icons.track_changes_outlined),
              label: '타겟'),
          BottomNavigationBarItem(icon: Icon(Icons.chat),
              activeIcon: Icon(Icons.chat_outlined),
              label: '메세지'),
        ],

      ),
    );
  }

}






