import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/feed.dart';
import 'package:instagram_clone/post.dart';
import 'story.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        primaryColor: Color(0xFFEEEEEE),
        accentColor: Colors.black,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _pages = [
    Feed(),
    Feed(),
    Feed(),
    Feed(),
    Feed(),
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        brightness: Brightness.light,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Instagram',
        ),
        leading: IconButton(
          icon: Icon(Feather.camera),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Feather.tv),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(FontAwesome.send_o),
            onPressed: () {},
          )
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (i) {
            setState(() {
              currentPage =i;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).accentColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Foundation.home),
              title: Text('Feed'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              
              icon: Icon(Feather.plus_square),
              title: Text('Upload'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.heart),
              title: Text('Likes'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.user),
              title: Text('Account'),
            ),
          ]),
    );
  }
}
