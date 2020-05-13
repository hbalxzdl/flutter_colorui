import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 45,
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
          elevation: 1,
          title: Text(
            '布局',
            style: TextStyle(
                color: new Color(0xFF333333), fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body:Container(
          color: Color(0xffF7F7F9),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Container(
                  child: new Column(
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

                            Text('铺满')
                          ],
                        ),
                      ),
                      new Container(
                        width:double.infinity,
                        color: Colors.white,
                        padding: EdgeInsets.all(15),
                        child: new Column(
                          children: <Widget>[
                            Container(
                              height: 30,
                              width:double.infinity,
                              padding: EdgeInsets.only(left: 20.0),
                              margin:  EdgeInsets.all(5.0),
                              alignment: Alignment.centerLeft,
                              color: Colors.black12,
                              child: Text('1'),
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: new Column(
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
                            Text('比列布局')
                          ],
                        ),
                      ),
                      new Container(
                        width:double.infinity,
                        color: Colors.white,
                        padding: EdgeInsets.all(15),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              child:  new Flex(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                  new Expanded(
                                    flex:1,
                                    child:  Container(
                                      height: 30,
                                      width:double.infinity,
                                      padding: EdgeInsets.only(left: 20.0),
                                      margin:  EdgeInsets.all(5.0),
                                      alignment: Alignment.centerLeft,
                                      color: Colors.black12,
                                      child: Text('1'),
                                    ),
                                  ),
                                  new Expanded(
                                    flex:1,
                                    child:  Container(
                                      height: 30,
                                      width:double.infinity,
                                      padding: EdgeInsets.only(left: 20.0),
                                      margin:  EdgeInsets.all(5.0),
                                      alignment: Alignment.centerLeft,
                                      color: Colors.black12,
                                      child: Text('1'),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            new Container(
                              child:  new Flex(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                  new Expanded(
                                    flex:1,
                                    child:  Container(
                                      height: 30,
                                      width:double.infinity,
                                      padding: EdgeInsets.only(left: 20.0),
                                      margin:  EdgeInsets.all(5.0),
                                      alignment: Alignment.centerLeft,
                                      color: Colors.black12,
                                      child: Text('1'),
                                    ),
                                  ),
                                  new Expanded(
                                    flex:2,
                                    child:  Container(
                                      height: 30,
                                      width:double.infinity,
                                      padding: EdgeInsets.only(left: 20.0),
                                      margin:  EdgeInsets.all(5.0),
                                      alignment: Alignment.centerLeft,
                                      color: Colors.black12,
                                      child: Text('2'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              child:  new Flex(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                  new Expanded(
                                    flex:1,
                                    child:  Container(
                                      height: 30,
                                      width:double.infinity,
                                      padding: EdgeInsets.only(left: 20.0),
                                      margin:  EdgeInsets.all(5.0),
                                      alignment: Alignment.centerLeft,
                                      color: Colors.black12,
                                      child: Text('1'),
                                    ),
                                  ),
                                  new Expanded(
                                    flex:2,
                                    child:  Container(
                                      height: 30,
                                      width:double.infinity,
                                      padding: EdgeInsets.only(left: 20.0),
                                      margin:  EdgeInsets.all(5.0),
                                      alignment: Alignment.centerLeft,
                                      color: Colors.black12,
                                      child: Text('2'),
                                    ),
                                  ),
                                  new Expanded(
                                    flex:3,
                                    child:  Container(
                                      height: 30,
                                      width:double.infinity,
                                      padding: EdgeInsets.only(left: 20.0),
                                      margin:  EdgeInsets.all(5.0),
                                      alignment: Alignment.centerLeft,
                                      color: Colors.black12,
                                      child: Text('3'),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: new Column(
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
                            Text('水平对齐')
                          ],
                        ),
                      ),
                      new Container(
                        width:double.infinity,
                        color: Colors.white,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
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
                              child: new Row(
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('start', ),

                                  ),
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('start',),
                                  )

                                ],
                              ) ,
                            ),
                            new Container(
                              padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
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
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('end', ),

                                  ),
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('end',),
                                  )

                                ],
                              ) ,
                            ),
                            new Container(
                              padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
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
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('center', ),

                                  ),
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('center',),
                                  )

                                ],
                              ) ,
                            ),
                            new Container(
                              padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
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
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('between', ),

                                  ),
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('between',),
                                  )

                                ],
                              ) ,
                            ),
                            new Container(
                              padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
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
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('around', ),

                                  ),
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('around',),
                                  )

                                ],
                              ) ,
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: new Column(
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
                            Text('垂直对齐')
                          ],
                        ),
                      ),
                      new Container(
                        width:double.infinity,
                        color: Colors.white,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
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
                              child: new Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(20),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('start', ),

                                  ),
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('start',),
                                  )

                                ],
                              ) ,
                            ),
                            new Container(
                              padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
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
                              child: new Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(20),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('center', ),

                                  ),
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('center',),
                                  )

                                ],
                              ) ,
                            ),
                            new Container(
                              padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
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
                              child: new Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  new Container(
                                    padding: EdgeInsets.all(20),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('end', ),

                                  ),
                                  new Container(
                                    padding: EdgeInsets.all(10),
                                    margin:  EdgeInsets.all(5.0),
                                    color: Colors.black12,
                                    child: Text('end',),
                                  )

                                ],
                              ) ,
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

        )

      ),
    );
  }
}
