import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
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
            '进度条',
            style: TextStyle(
                color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // 条形进度条
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
                            children: <Widget>[Text('条形进度条')],
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(15),
                          child: new Column(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                margin: const EdgeInsets.all(10),
                                alignment: Alignment.centerLeft,
                                child: LinearProgressIndicator(),
                                height: 8.0,
                              ),
                              Container(
                                width: double.infinity,
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.all(10),
                                decoration: new BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: LinearProgressIndicator(
                                  value: null, //用来表示进度多少
                                  backgroundColor: Color(0xffebeef5),  //背景颜色
                                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),  //进度颜色
                                ),
//
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // 圆形进度条
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
                            children: <Widget>[Text('圆形进度条')],
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(15),
                          child: new Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    alignment: Alignment.centerLeft,

                                    child: CircularProgressIndicator(),
                                    height: 44.0,
                                    width: 44.0,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    alignment: Alignment.centerLeft,
                                    child: CircularProgressIndicator(
                                      value: null, //用来表示进度多少
                                      backgroundColor: Color(0xffebeef5),  //背景颜色
                                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),  //进度颜色
                                      strokeWidth: 6,

                                    ),
                                    height: 44.0,
                                    width: 44.0,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  // IOS菊花
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
                            children: <Widget>[Text('IOS菊花')],
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(15),
                          child: new Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    height: 44.0,
                                    width: 44.0,
                                    child: CupertinoActivityIndicator(
                                      radius: 20,
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
