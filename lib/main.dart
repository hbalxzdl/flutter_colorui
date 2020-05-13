import 'package:flutter/material.dart';
import 'basics/layout.dart';
import 'component/index.dart';
import 'about/index.dart';
import 'plugin/index.dart';
import 'index/index.dart';
import 'router/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //设置成同样的颜色水波纹就没有了
        highlightColor: Colors.transparent,
        splashColor:  Colors.transparent,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),

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
// 底部导航
  @override

  final List<BottomNavigationBarItem> bottomNavItems = [
    new BottomNavigationBarItem(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.home),
        title: new Text("元素")),
    new BottomNavigationBarItem(
        backgroundColor: Colors.green,
        icon: Icon(Icons.message),
        title: new Text('组件')),
    new BottomNavigationBarItem(
        backgroundColor: Colors.amber,
        icon: Icon(Icons.shopping_cart),
        title: new Text("拓展")),
    new BottomNavigationBarItem(
        backgroundColor: Colors.red,
        icon: Icon(Icons.person),
        title: Text('关于'))
  ];

  //视图view
  final pageViews = [
    new Index(),
    new Component(),
    new Plugin(),
    new About()
  ];

  int currentIndex = 0;
  void _changePage(int index) {
    if(index != currentIndex){
      setState(() {
        currentIndex = index;
      });
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: pageViews[currentIndex],
        bottomNavigationBar:BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            items:bottomNavItems ,
            onTap: (index) {
              _changePage(index);
            },
        ),

    );
  }
}
