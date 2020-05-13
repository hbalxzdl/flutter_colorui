import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  final _scaffoldkey = new GlobalKey<ScaffoldState>();

  var _dropValue = '语文';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key: _scaffoldkey,
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
            '按钮',
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
                  //扁平按钮
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
                            children: <Widget>[Text('扁平按钮')],
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(15),
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  FlatButton(
                                    child: Text('默认'),
                                    color: Color(0xfff0f0f0),
                                    onPressed: () {},
                                  ),
                                  FlatButton(
                                    child: Text('颜色'),
                                    onPressed: () {},
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                  ),
                                  FlatButton(
                                    child: Text('圆角'),
                                    color: Color(0xfff0f0f0),
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),

                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  FlatButton.icon(
                                    label: Text('图标'),
                                    icon: Icon(Icons.add),
                                    color: Color(0xfff0f0f0),
                                    onPressed: () {},
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //凸起按钮
                  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 24.0, right: 24),
                          margin: EdgeInsets.only(top: 15.0),
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, .1),
                                width: 1,
                                style: BorderStyle.solid,
                              ))),
                          child: Row(
                            children: <Widget>[Text('凸起按钮')],
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(15),
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  RaisedButton(
                                    child: Text("默认"),
                                    onPressed: () => print("普通按钮"),
                                  ),
                                  RaisedButton(
                                    child: Text("颜色"),
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    onPressed: () => print("普通按钮"),
                                  ),
                                  RaisedButton(
                                    child: Text('圆角'),
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                ],
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  RaisedButton(
                                    child: Text("阴影"),
                                    elevation: 8,
                                    onPressed: () => print("普通按钮"),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 40,
                                    child: RaisedButton(
                                      padding: EdgeInsets.all(0),
                                      child: Text("自定义宽高"),
                                      onPressed: () => print("自定义按钮的宽高"),
                                    ),
                                  ),
                                  RaisedButton.icon(
                                    icon: Icon(Icons.add),
                                    label: Text("图标"),
                                    onPressed: () => print(""),
                                  ),
                                ],
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  RaisedButton(
                                    child: Text("禁用"),
                                    onPressed: null,
                                    //通过将onPressed设置为null来实现按钮的禁用状态
                                    color: Colors.pink,
                                    disabledColor: Colors.grey,
                                  ),

                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //缕空按钮
                  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 24.0, right: 24),
                          margin: EdgeInsets.only(top: 15.0),
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, .1),
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ))),
                          child: Row(
                            children: <Widget>[Text('缕空按钮')],
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(15),
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  OutlineButton(
                                    child: Text("默认"),
                                    textColor: Colors.red,
                                    onPressed: () => print("普通按钮"),
//                                    splashColor: Colors.red,
                                  ),

                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //图标按钮
                  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 24.0, right: 24),
                          margin: EdgeInsets.only(top: 15.0),
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, .1),
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ))),
                          child: Row(
                            children: <Widget>[Text('图标按钮')],
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(15),
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.add),
                                    color: Colors.red,
                                    onPressed: (){

                                    },
                                  ),

                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //块级按钮
                  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 24.0, right: 24),
                          margin: EdgeInsets.only(top: 15.0),
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, .1),
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ))),
                          child: Row(
                            children: <Widget>[Text('块级按钮')],
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(15),
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  Expanded(
                                    //自适应布局
                                    child: Container(
                                      child: RaisedButton(
                                        child: Text("默认"),
                                        onPressed: () => print("自适应按钮"),
                                        splashColor: Colors.pink,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  Expanded(
                                    //自适应布局
                                    child: Container(

                                      child: RaisedButton(
                                        child: Text("默认"),
                                        color: Colors.blue,
                                        onPressed: () => print("自适应按钮"),
                                        splashColor: Colors.pink,
                                      ),
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
                  //无效状态
                  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 24.0, right: 24),
                          margin: EdgeInsets.only(top: 15.0),
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, .1),
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ))),
                          child: Row(
                            children: <Widget>[Text('无效状态')],
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.all(15),
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  Expanded(
                                    //自适应布局
                                    child: Container(
                                      child: RaisedButton(
                                        child: Text("禁用"),
                                        onPressed: null,
                                        //通过将onPressed设置为null来实现按钮的禁用状态
                                        disabledColor: Colors.blue,

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              new Row(
                                children: <Widget>[
                                  Expanded(
                                    //自适应布局
                                    child: Container(
                                      child: OutlineButton(
                                        child: Text("禁用"),
                                        onPressed: null,
                                        //通过将onPressed设置为null来实现按钮的禁用状态

                                      ),
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
                  //选择按钮
                  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          padding: EdgeInsets.only(left: 24.0, right: 24),
                          margin: EdgeInsets.only(top: 15.0),
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, .1),
                                    width: 1,
                                    style: BorderStyle.solid,
                                  ))),
                          child: Row(
                            children: <Widget>[Text('选择按钮')],
                          ),
                        ),
                        new Container(
                        padding: EdgeInsets.all(15),
                          color: Colors.white,
                        child: new Column(
                          children: <Widget>[
                            new Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10.0,right: 10.0),
                                  child:  DropdownButton(
                                    value: _dropValue,

                                    items: [
                                      DropdownMenuItem(child: Text('语文'),value: '语文',),
                                      DropdownMenuItem(child: Text('数学'),value: '数学'),
                                      DropdownMenuItem(child: Text('英语'),value: '英语'),
                                    ],
                                    onChanged: (value){
                                      setState(() {
                                        _dropValue = value;
                                      });
                                    },


                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0,right: 10.0),
                                  child:  DropdownButton(
                                    value: _dropValue,
                                    icon: Icon(Icons.add),
                                    iconDisabledColor: Colors.red,
                                    iconEnabledColor: Colors.red,
                                    items: [
                                      DropdownMenuItem(child: Text('语文'),value: '语文',),
                                      DropdownMenuItem(child: Text('数学'),value: '数学'),
                                      DropdownMenuItem(child: Text('英语'),value: '英语'),
                                    ],
                                    onChanged: (value){
                                      setState(() {
                                        _dropValue = value;
                                      });
                                    },


                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0,right: 10.0),
                                  child:  DropdownButton(
                                    value: _dropValue,

                                    items: [
                                      DropdownMenuItem(child: Text('语文'),value: '语文',),
                                      DropdownMenuItem(child: Text('数学'),value: '数学'),
                                      DropdownMenuItem(child: Text('英语'),value: '英语'),
                                    ],
                                    onChanged: (value){
                                      setState(() {
                                        _dropValue = value;
                                      });
                                    },


                                  ),
                                )

                              ],
                            ),
                            new ListTile(
                              title: new Text('更多'),
                              trailing: PopupMenuButton<String>(
                                onSelected:(value){
                                  final snackBar = new SnackBar(content: Text('显示snackBar'));
                                  /*
                                  直接使用会报错：找不到上下文，于是在Scaffold定义一个Key
                                   Scaffold.of(context).showSnackBar(snackBar);
                                  */
                                  _scaffoldkey.currentState.showSnackBar(snackBar);


                                },
                                itemBuilder: (context) {
                                  return <PopupMenuEntry<String>>[
                                    PopupMenuItem<String>(
                                      value: '语文',
                                      child: Text('语文'),
                                    ),
                                    PopupMenuItem<String>(
                                      value: '数学',
                                      child: Text('数学'),
                                    ),
                                    PopupMenuItem<String>(
                                      value: '英语',
                                      child: Text('英语'),
                                    ),

                                  ];
                                },
                              ),
                            )
                          ],
                        ),
                      ),

                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
