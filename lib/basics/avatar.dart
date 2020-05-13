import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
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
              '头像',
              style: TextStyle(
                  color: new Color(0xFF333333), fontWeight: FontWeight.w600),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
          body: Container(
              color: Color(0xfff1f1f1),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    //头像形状
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
                              children: <Widget>[Text('头像形状')],
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.all(15),
                            child: new Column(
                              children: <Widget>[
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    // 圆形
                                    new ClipRRect(
                                      borderRadius: BorderRadius.circular(6.0),
                                      child: new SizedBox(
                                        width: 48.0,
                                        height: 48.0,
                                        child: new Image.network(
                                          "https://ossweb-img.qq.com/images/lol/web201310/skin/big10001.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    // 圆角
                                    new Container(
                                      padding: EdgeInsets.only(left: 24.0),
                                      child: new ClipOval(
                                        child: new SizedBox(
                                          width: 48.0,
                                          height: 48.0,
                                          child: new Image.network(
                                            "https://ossweb-img.qq.com/images/lol/web201310/skin/big10001.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // 内嵌文字(图标)
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
                              children: <Widget>[Text('内嵌文字(图标)')],
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.all(15),
                            child: new Column(
                              children: <Widget>[
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    // 圆形
                                    new Container(
                                      width: 42.0,
                                      height: 42.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: Colors.black12,
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      child: Icon(
                                        Icons.people,
                                        color: Colors.white,
                                      ),
                                    ),
                                    // 圆形
                                    new Container(
                                      width: 42.0,
                                      height: 42.0,
                                      margin: EdgeInsets.only(left: 24.0),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black12,
                                      ),
                                      child: Icon(
                                        Icons.people,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // 头像组
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
                              children: <Widget>[Text('头像组')],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
