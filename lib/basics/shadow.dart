import 'package:flutter/material.dart';

class Shows extends StatefulWidget {
  @override
  _ShowsState createState() => _ShowsState();
}

class _ShowsState extends State<Shows> {
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
            '边框',
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
                new Container(
                  color: Colors.white,
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
                          children: <Widget>[Text('边框')],
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(15),
                        child: new Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(15),
                              child: Text('四周'),
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color.fromRGBO(0, 0, 0, .1),
                                    width: 1,
                                    style: BorderStyle.solid,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(15),
                        child: new Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(15),
                              child: Text('上'),
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    top: BorderSide(
                                  color: Color.fromRGBO(0, 0, 0, .1),
                                  width: 1,
                                  style: BorderStyle.solid,
                                )),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(15),
                              child: Text('右'),
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    right: BorderSide(
                                      color: Color.fromRGBO(0, 0, 0, .1),
                                      width: 1,
                                      style: BorderStyle.solid,
                                    )),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(15),
                              child: Text('下'),
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromRGBO(0, 0, 0, .1),
                                      width: 1,
                                      style: BorderStyle.solid,
                                    )),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(15),
                              child: Text('左'),
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    left: BorderSide(
                                      color: Color.fromRGBO(0, 0, 0, .1),
                                      width: 1,
                                      style: BorderStyle.solid,
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
                  color: Colors.white,
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
                          children: <Widget>[Text('阴影')],
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(15),
                        child: new Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(15),
                              child: Text('默认阴影'),
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(26, 26, 26, .2),
                                        offset: Offset(3.0, 3.0),
                                        blurRadius: 5.0,
                                        spreadRadius: 1.0)
                                  ],
                                  border: Border.all(
                                    color: Color.fromRGBO(0, 0, 0, .1),
                                    width: 1,
                                    style: BorderStyle.solid,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                new Container(
                  color: Colors.white,
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
                          children: <Widget>[Text('形状')],
                        ),
                      ),
                      new Container(
                        padding: EdgeInsets.all(15),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              padding: EdgeInsets.only(left: 24.0, right: 24),
                              child: Text('默认'),
                              color: Color.fromRGBO(0, 0, 0, .1),

                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              padding: EdgeInsets.only(left: 24.0, right: 24),
                              child: Text('椭圆'),
                              decoration: new BoxDecoration(
                                  color: Color.fromRGBO(0, 0, 0, .1),
                                  borderRadius:BorderRadius.circular(20.0)
                                 ),


                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              padding: EdgeInsets.only(left: 24.0, right: 24),
                              child: Text('圆角'),
                              decoration: new BoxDecoration(
                                  color: Color.fromRGBO(0, 0, 0, .1),
                                  borderRadius:BorderRadius.circular(5.0)
                              ),


                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
