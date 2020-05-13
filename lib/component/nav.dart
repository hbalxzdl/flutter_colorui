import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  TabController controller; //底部导航控制器
  var tabs = <Tab>[
    Tab(text: "Tab1",),
    Tab(text: "Tab2",),
    Tab(text: "Tab3",)
  ];
  var tabs2 = <Tab>[
    Tab(text: "Tab1",),
    Tab(text: "Tab2",),
    Tab(text: "Tab3",),
    Tab(text: "Tab4",),
    Tab(text: "Tab5",),
    Tab(text: "Tab6",),
    Tab(text: "Tab7",),
    Tab(text: "Tab8",),
    Tab(text: "Tab9",),
    Tab(text: "Tab10",),
  ];
  int tabIndex=0;

  @override

  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              '导航栏',
              style: TextStyle(
                  color: new Color(0xFF333333), fontWeight: FontWeight.w600),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  new Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 24.0,right: 24),
                    decoration:new BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom:BorderSide(
                              color: Color.fromRGBO(0, 0, 0, .1),
                              width: .5,
                              style: BorderStyle.solid,

                            )
                        )
                    ),
                    child: Row(
                      children: <Widget>[

                        Text('居中')
                      ],
                    ),
                  ),
                  new Container(
                     color: Colors.white,
                     child:  new Center(
                         child: DefaultTabController(
                             length: tabs.length,
                             child: Container(
  //                            height: 40,
                               child: new TabBar(
                                 labelColor: Colors.blue,
                                 unselectedLabelColor: Colors.black26,
                                 indicatorColor:Colors.blue,
                                 indicatorSize: TabBarIndicatorSize.label,
                                 labelPadding:EdgeInsets.only(left: 5,right: 5),
                                 indicatorPadding:EdgeInsets.only(bottom: 10.0),
                                 indicatorWeight: 1,
                                 isScrollable: true,
                                 tabs: tabs,
                                 onTap: (int i) {
                                   setState(() {
                                     tabIndex=i;
                                   });
                                 },

                               ),
                             ))),
                   ),
                  new Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 24.0,right: 24),
                    margin: EdgeInsets.only(top: 15.0),
                    decoration:new BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom:BorderSide(
                              color: Color.fromRGBO(0, 0, 0, .1),
                              width: .5,
                              style: BorderStyle.solid,

                            )
                        )
                    ),
                    child: Row(
                      children: <Widget>[

                        Text('滑动')
                      ],
                    ),
                  ),
                  new Container(
                      child: DefaultTabController(
                          length: tabs2.length,
                          child: Container(
                            color: Colors.white,
//                            height: 40,
                            child: new TabBar(
                              labelColor: Colors.blue,
                              unselectedLabelColor: Colors.black26,
                              indicatorColor:Colors.blue,
                              indicatorSize: TabBarIndicatorSize.label,
                              labelPadding:EdgeInsets.only(left: 5,right: 5),
//                              indicatorPadding:EdgeInsets.only(bottom: 10.0),
                              indicatorWeight: 1,
                              isScrollable: true,
                              tabs: tabs2 ,
                              onTap: (int i) {
                                setState(() {
                                  tabIndex=i;
                                });
                              },

                            ),
                          ))),
                ],
              ),
            )
        )
    );
  }
}

