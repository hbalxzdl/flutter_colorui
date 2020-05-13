import 'package:flutter/material.dart';

class Bar extends StatefulWidget {
  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {

  bool isStar = true;
  int activeIndex=0;

  void isStarClickListen() {
    setState(() {
      isStar = !isStar;
    });
  }


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
            '操作条',
            style: TextStyle(
                color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
            color: Color(0xfff1f1f1),
            child: SingleChildScrollView(
                child: new Column(
                  children: <Widget>[
                    new Container(
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 40,
                            padding: EdgeInsets.only(left: 24.0, right: 24),
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromRGBO(0, 0, 0, .1),
                                      width: 1,
                                      style: BorderStyle.solid,
                                    ))),
                            child: Row(
                              children: <Widget>[Text('底部操作条')],
                            ),
                          ),
                          new Container(
                            height: 50,
                            color: Colors.white,
                            margin: EdgeInsets.only(top: 10.0, bottom: 10),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                new Container(
                                  child: new Flex(
                                    direction: Axis.horizontal,
                                    children: <Widget>[
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                              onTap: () {
                                                isStarClickListen();
                                              },
                                              child: new Column(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                children: <Widget>[
                                                  Icon(
                                                      isStar
                                                          ? Icons.star
                                                          : Icons.star_border
                                                  ),
                                                  Text(
                                                    '收藏',
//                                              style: textStyle,
                                                  )
                                                ],
                                              ),
                                            )

                                        ),
                                      ),
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                          child: new Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons.add_shopping_cart,
                                              ),
                                              Text(
                                                '购物车',

//                                              style: textStyle,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 2,
                                        child: new Container(
                                          height: 50,
                                          alignment: Alignment.center,
                                          color: Color(0xfff37b1d),
                                          child: new Text('加入购物车',
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 2,
                                        child: new Container(
                                          height: 50,
                                          color: Color(0xffe54d42),
                                          alignment: Alignment.center,
                                          child: new Text(
                                              '立即购买', style: TextStyle(
                                            color: Colors.white,
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          new Container(
                            height: 50,
                            color: Colors.white,
                            margin: EdgeInsets.only(bottom: 10),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                new Container(
                                  child: new Flex(
                                    direction: Axis.horizontal,
                                    children: <Widget>[
                                      new Expanded(
                                        flex: 1,
                                        child: new Container(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                              onTap: () {
                                                isStarClickListen();
                                              },
                                              child: new Column(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                children: <Widget>[
                                                  Icon(
                                                      isStar
                                                          ? Icons.star
                                                          : Icons.star_border
                                                  ),
                                                  Text(
                                                    '收藏',
//                                              style: textStyle,
                                                  )
                                                ],
                                              ),
                                            )

                                        ),
                                      ),
                                      new Expanded(
                                          flex: 1,
                                          child: Stack(
                                            children: <Widget>[
                                              new Container(
                                                child: new Column(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.add_shopping_cart,
                                                    ),
                                                    Text(
                                                      '购物车',

//                                              style: textStyle,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Positioned(
                                                top: 0.0,
                                                right: 3.0,
                                                child: new Container(
                                                  padding: EdgeInsets.only(
                                                      left: 6.0, right: 6.0),
                                                  decoration: new BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius: BorderRadius
                                                          .circular(20.0)
                                                  ),
                                                  child: Text('12',
                                                    style: TextStyle(
                                                        color: Colors.white),),
                                                ),
                                              )
                                            ],
                                          )
                                      ),
                                      new Expanded(
                                        flex: 2,
                                        child: new Container(
                                          height: 50,
                                          alignment: Alignment.center,
                                          color: Color(0xfff37b1d),
                                          child: new Text('加入购物车',
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                        ),
                                      ),
                                      new Expanded(
                                        flex: 2,
                                        child: new Container(
                                          height: 50,
                                          color: Color(0xffe54d42),
                                          alignment: Alignment.center,
                                          child: new Text(
                                              '立即购买', style: TextStyle(
                                            color: Colors.white,
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    new Container(

                    )

                  ],
                ))),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar:BottomNavigationBar(
            onTap: (index){
              if(index==2) {
                return;
              }
              setState(() {
                activeIndex=index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.store), title: Text('论坛')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home,color: Colors.white,), title: Text('发布')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('消息')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('我的')),
            ],
            type: BottomNavigationBarType.fixed,
            fixedColor: Theme.of(context).primaryColor,
            currentIndex: activeIndex,

          )



      ),
    );
  }
}
